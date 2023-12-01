# season-2-SE-my_libasm
<div class="card-block">
<div class="row">
<div class="col tab-content">
<div class="tab-pane active show" id="subject" role="tabpanel">
<div class="row">
<div class="col-md-12 col-xl-12">
<div class="markdown-body">
<p class="text-muted m-b-15">
</p><h1>My Libasm</h1>
<p>Remember to git add &amp;&amp; git commit &amp;&amp; git push each exercise!</p>
<p>We will execute your function with our test(s), please DO NOT PROVIDE ANY TEST(S) in your file</p>
<p>For each exercise, you will have to create a folder and in this folder, you will have additional files that contain your work. Folder names are provided at the beginning of each exercise under <code>submit directory</code> and specific file names for each exercise are also provided at the beginning of each exercise under <code>submit file(s)</code>.</p>
<hr>
<table>
<thead>
<tr>
<th>My Libasm</th>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td>Submit directory</td>
<td>.</td>
</tr>
<tr>
<td>Submit files</td>
<td>Makefile - *.c - *.S - *.h</td>
</tr>
</tbody>
</table>
<h3>Description</h3>
<p>Reading and writing assembly is a skill. You can see it in a binary way: those you can and those who can't.</p>
<p>This is one of your very rare opportinuty to be that person: "wowww, they know how to read assembly."
And more important, you will be able to understand what is it really happening when you are calling a function.
(copy of parameter, where is it stored the return value, how does the stack work?)</p>
<img src="https://storage.googleapis.com/qwasar-public/s02_SE/assembly.jpg" width="600">
Assembly to machine code. ## What is Assembly? An assembly language is a low-level programming language designed for a specific
type of processor. It may be produced by compiling source code from a high-level programming language (such as C/C++) but
can also be written from scratch.
<p>It means, it's a language, with lower level instructions. You will have to write more code in order to do the same operation than in a higher level language.</p>
<p>If you are looking how to declare variable, you can't. Variables are called: <code>registers</code>.</p>
<p><a href="https://en.wikipedia.org/wiki/Comparison_of_assemblers" target="_blank">It exists multiple languages assembly</a></p>
<p>For this project we will use <code>nasm 64</code>.</p>
<p>Example of a main() calling the function <code>puts()</code> with "Hello, world":</p>
<pre class=" language-plain"><code class=" language-plain">$&gt;cat hello.asm
  global    _main
  extern    _puts

  section   .text
_main:      push      rbx           ; Call stack must be aligned
  lea       rdi, [rel message]      ; First argument is address of message
  call      _puts                   ; puts(message)
  pop       rbx                     ; Fix up stack before returning
  ret

  section   .data
message:  db        "Hello, world", 0       ; Strings need a zero byte at the end
$&gt;
</code></pre>
<h2>How to compile?</h2>
<pre class=" language-plain"><code class=" language-plain"># OS X
# $&gt;nasm -fmacho64 hello.asm

# Linux
$&gt; nasm -felf hello.asm

# We are using gcc for the linker.
$&gt;gcc hello.o -o hello
$&gt;./hello
$&gt;
</code></pre>
<h2>Technical specifications</h2>
<p>Here's what your my_libasm should have</p>
<pre class=" language-plain">- strlen      -&gt; my_strlen
- strchr      -&gt; my_strchr
- memset      -&gt; my_memset
- memcpy      -&gt; my_memcpy
- strcmp      -&gt; my_strcmp
- memmove     -&gt; my_memmove
- strncmp     -&gt; my_strncmp
- strcasecmp  -&gt; my_strcasecmp
- index       -&gt; my_index
- read        -&gt; my_read
- write       -&gt; my_write
</pre>

<p></p>
</div>

</div>
</div>
</div>
<div class="tab-pane" id="resources" role="tabpanel">
</div>
</div>
</div>
</div>
