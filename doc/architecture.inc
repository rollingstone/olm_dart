<!-- Copyright (c) 2020 Famedly GmbH -->
<!-- SPDX-License-Identifier: AGPL-3.0-or-later -->
<style>
.olm ul { list-style: none; margin: 0; padding: 0; }
.olm li { position: relative; margin: 0; padding: 0; }
.olm ul.v { display: flex; flex-direction: row; }
.olm ul.h { display: flex; flex-direction: column; }
.olm ul.v > li:not(.platform) { flex: 1; }
.olm ul.h > li:not(.platform) { flex: 1; }
.olm ul.v > li > ul { height: 100%; }
.olm :not(span).box { display: flex; flex-direction: column; justify-content: center; text-align: center; }
.olm .box { border: 1px solid black; margin: .5em; padding: .5em; }
.olm li::before { content: ""; width: 1px; height: 1.1em; background-color: #000; position: absolute; left: 0; right: 0; bottom: 100%; margin: auto; z-index: -1; }
.olm ul.h > li:not(:last-child) > ul.v > li::before { top: 0; bottom: 0; height: auto; margin: -1.1em auto; }
.olm ul.h > li:first-child::before, .olm ul.h > li:not(.box)::before, .olm ul.h > li:not(.box) + li::before { display: none; }
.olm ul.v > li:not(.box)::before { margin-bottom: -.5em; }
.olm .platform { background-color: #ddd; }
.olm .upstream { background-color: #ffd; }
.olm .repo { background-color: #ddf; }
</style>
<div class="olm">
<ul class="h">
	<li class="box repo">
		Dart Bindings, like JS Bindings (olm.dart)
	<li>
		<ul class="v">
			<li>
				<ul class="h">
					<li class="box repo">
						Dart Bindings Code (native.dart)
					<li class="box repo">
						Dart FFI (src/ffi.dart)
					<li class="box upstream">
						libolm
					<li class="box platform">
						Native
				</ul>
			<li>
				<ul class="h">
					<li class="box repo">
						Dart JS-interop (js.dart)
					<li class="box upstream">
						JS Bindings Code
					<li>
						<ul class="v">
							<li class="box upstream">
								asm.js<div class="box">libolm</div>
							<li class="box upstream">
								WASM<div class="box">libolm</div>
						</ul>
					<li class="box platform">
						JS
				</ul>
		</ul>
</ul>
<h2>Legend</h2>
<span class="box platform">Platform</span>
<span class="box upstream">Upstream</span>
<span class="box repo">This repo</span>
</div>
