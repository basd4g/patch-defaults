import Foundation

if CommandLine.arguments.count < 3 {
  fputs("Missing Arguments", stderr)
  exit(1)
}

let plistRootA = LoadPlist(path: CommandLine.arguments[1])
let plistRootB = LoadPlist(path: CommandLine.arguments[2])

let plistA = PlistOfADomain(root: plistRootA)
let plistB = PlistOfADomain(root: plistRootB)

let diff = Diff(A: plistA, B: plistB)
diff.comparePlistOfADomain()

// plist.traceRoot()
