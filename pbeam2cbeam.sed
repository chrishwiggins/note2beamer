s/includegraphics/includegraphics[width=3in]/
s/\\begin{frame}\\frametitle{\([A-z,\/ ]*\):}/\\section[\1]{\1}\\begin{frame}\\frametitle{\1:}/
s/\\begin{frame}\[fragile\]\\frametitle{\([A-z,\/ ]*\):}/\\section[\1]{\1}\\begin{frame}\[fragile\]\\frametitle{\1:}/
s/\\begin{frame}\\frametitle{\([A-z,\/ ]*\)}/\\subsection[\1]{\1}\\begin{frame}\\frametitle{\1:}/
s/\\begin{frame}\[fragile\]\\frametitle{\([A-z,\/ ]*\)}/\\subsection[\1]{\1}\\begin{frame}\\[fragile\]\frametitle{\1:}/
