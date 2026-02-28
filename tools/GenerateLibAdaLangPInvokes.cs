// Run: dotnet run -- <path-to-libadalang.h> <output-file.cs>
// Simple generator: extracts "extern <ret> ada_*(" prototypes and emits DllImport declarations
using System;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
class Program
{
    static string MapType(string ctype)
    {
        ctype = ctype.Trim();
        // common mappings used in LibAdaLang.cs
        if (ctype == "ada_node *") return "ref ada_node";
        if (ctype == "const ada_node*") return "ref ada_node";
        if (ctype == "ada_node_array *") return "out IntPtr";
        if (ctype == "ada_internal_param_actual_array *") return "out IntPtr";
        if (ctype == "ada_internal_ref_result_array *") return "out IntPtr";
        if (ctype == "ada_internal_aspect *") return "out IntPtr";
        if (ctype == "ada_internal_aspect_array *") return "out IntPtr";
        if (ctype == "ada_symbol_type *") return "ref ada_symbol_type";
        if (ctype == "const ada_symbol_type*") return "ref ada_symbol_type";
        if (ctype == "ada_symbol_type_array *") return "out IntPtr";
        if (ctype == "ada_string_type *") return "out IntPtr";
        if (ctype == "ada_big_integer *") return "out IntPtr";
        if (ctype == "ada_text *") return "out ada_text";
        if (ctype == "ada_token *") return "ref ada_token";
        if (ctype == "const ada_token*") return "ref ada_token";
        if (ctype == "ada_analysis_unit *") return "out IntPtr";
        if (ctype == "ada_analysis_unit_array") return "IntPtr";
        if (ctype == "ada_bool *") return "out byte";
        if (ctype == "int *") return "out int";
        if (ctype == "unsigned") return "int";
        if (ctype == "char **") return "out IntPtr";
        if (ctype == "const char **") return "IntPtr";
        if (ctype == "ada_big_integer") return "IntPtr";
        if (ctype == "ada_string_type") return "IntPtr";
        if (ctype == "ada_analysis_unit") return "IntPtr";
        if (ctype.EndsWith("*")) return "IntPtr";
        // fallback: use IntPtr
        return "IntPtr";
    }

    static void Main(string[] args)
    {
        if (args.Length < 2) { Console.WriteLine("Usage: <header.h> <out.cs>"); return; }
        string input = File.ReadAllText(args[0]);
        var sb = new StringBuilder();
        sb.AppendLine("using System;");
        sb.AppendLine("using System.Runtime.InteropServices;");
        sb.AppendLine();
        sb.AppendLine("namespace LibAdaLang { internal static partial class Native {");
        sb.AppendLine("    private const string LIBRARY = \"libadalang.dll\";");
        sb.AppendLine("    private const CallingConvention CALLING = CallingConvention.Cdecl;");
        sb.AppendLine();

        // Regex to grab prototypes: extern [\w\s\*]+ ada_[^(]+\([^;]*\);
        var protoRx = new Regex(@"extern\s+([^\n\r;]+?)\s+(ada_[a-z0-9_]+)\s*\(\s*([^;)]*)\s*\)\s*;", RegexOptions.IgnoreCase | RegexOptions.Compiled);
        foreach (Match m in protoRx.Matches(input))
        {
            string returnType = m.Groups[1].Value.Trim();
            string func = m.Groups[2].Value.Trim();
            string argsList = m.Groups[3].Value.Trim();
            // only generate for node accessors / kind-specific (ada_*_f_ / ada_*_p_ / ada_*_p_*)
            if (!(func.Contains("_f_") || func.Contains("_p_") || func.StartsWith("ada_") && func.Contains("_p_"))) continue;
            // parse parameters
            var paramParts = new List<string>();
            if (!string.IsNullOrEmpty(argsList))
            {
                var parts = argsList.Split(new[]{','}, StringSplitOptions.RemoveEmptyEntries);
                foreach (var p in parts)
                {
                    string pn = p.Trim();
                    // strip parameter names
                    // last token is name; remove it if it doesn't look like a type
                    // find position of last space before identifier
                    var tokens = Regex.Split(pn, @"\s+");
                    if (tokens.Length >= 2)
                    {
                        // reconstruct ctype from tokens except last if last looks like identifier (no asterisks)
                        string last = tokens[tokens.Length - 1];
                        if (!last.Contains("*") && Regex.IsMatch(last, @"^[A-Za-z_][A-Za-z0-9_]*$"))
                        {
                            int cut = pn.LastIndexOf(last, StringComparison.Ordinal);
                            pn = pn.Substring(0, cut).Trim();
                        }
                    }
                    paramParts.Add(MapType(pn));
                }
            }
            // return mapping
            string csReturn = "int";
            if (returnType.Contains("void")) csReturn = "void";
            else if (returnType.Contains("ada_bool")) csReturn = "byte";
            else if (returnType.Contains("unsigned")) csReturn = "int";
            else if (returnType.Contains("ada_node_kind_enum") || returnType.Contains("ada_call_expr_kind") ) csReturn = "int";
            else if (returnType.Contains("ada_big_integer") || returnType.Contains("ada_analysis_unit") || returnType.EndsWith("*")) csReturn = "IntPtr";
            // produce signature
            sb.AppendLine("        [DllImport(LIBRARY, CallingConvention = CALLING)]");
            sb.Append("        public static extern " + csReturn + " " + func + "(");
            // map first param specially to match existing style: use ref ada_node for first parameter if present
            for (int i = 0; i < paramParts.Count; ++i)
            {
                if (i > 0) sb.Append(", ");
                sb.Append(paramParts[i]);
            }
            sb.AppendLine(");");
            sb.AppendLine();
        }

        sb.AppendLine("} }");
        File.WriteAllText(args[1], sb.ToString());
        Console.WriteLine(\"Wrote \" + args[1]);
    }
}