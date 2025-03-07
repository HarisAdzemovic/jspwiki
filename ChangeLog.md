<!--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

**2019-11-01  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M6-git-03_

* Bringing in Docker support to ASF repo from https://github.com/metskem/docker-jspwiki. 
  See https://jspwiki-wiki.apache.org/Wiki.jsp?page=Docker for details.
  
* Dependency updates
  * Flexmark to 0.50.42
  * Selenide to 5.5.0
  * Tomcat to 8.5.47

**2019-10-12  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M6-git-02_

* `FileUtils.copyContents( InputStream, OutputStream )` enforces writes to disk for `FileOutputStream` through
  their associated `FileDescriptor`.

* new static methods to build `TestEngine` instances which do not throw checked Exceptions and thus allows
  instances to be built as member of test classes, instead of rebuilding for every test, saving some 
  time in the process.

* `TestEngine` will generate separate page, attachment and work directories, in order to allow each instance
  to work with a clean file installation.

**2019-10-10  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M6-git-01_

* Introduce [Awaitility](https://github.com/awaitility/awaitility) to speed up tests formerly relaying on `Thread.sleep(..)`

* `LuceneSearchProvider` now uses an `Executor` to increase performance on searches.

**2019-09-12  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-19_

* Fix javascript build error,  and some favicon errors.

**2019-09-10  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M5-git-18_

* [JSPWIKI-1115](https://issues.apache.org/jira/browse/JSPWIKI-1115): a few more dependency upgrades before 2.11.0-M5
    * Commons Text to 1.8
    * Flexmark to 0.50.40
    * Hsqldb to 2.5.0
    * JUnit to 5.5.2
    * Lucene to 8.2.0
    * Selenide to 5.3.1

**2019-09-07  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-17_

* Few critical sonarcloud fixes; added clean parsing of `skin` parameter

**2019-08-31  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-16_

* Fixed `InfoContent.jsp` vulnerability in old jspwiki template (templates/211/...)
  related to the rename parameter.

* Fixed `preview.jsp` vulnerability related to the remember parameter.


**2019-08-31  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-15_

* Improve UI accessibility (ref. sonarcloud report)

**2019-08-27  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-14_

* XSS vulnerability on the page rename parameter

* Few sonarcloud fixes

**2019-08-24 Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-13_

* Various small fixes in html & jsp files, reported by sonarcloud.

**2019-08-24 Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M5-git-12_

* [JSPWIKI-1115](https://issues.apache.org/jira/browse/JSPWIKI-1115): Upgrade flexmark to 0.50.28 and tomcat to 8.5.45

* Ended up removing/replacing all `@Deprecated` code

**2019-08-21  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-11_

* [JSPWIKI-1097](https://issues.apache.org/jira/browse/JSPWIKI-1097) Various smaller JS refactorings, and bugfixes.

* Clean up several minor JSP bugs reported by sonarcloud.

**2019-08-19  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M5-git-10_

* Removed `@Deprecated` code. A complete analysis of what have changed will be available at
  http://jspwiki.apache.org/japicmp/index.html once 2.11.0.M5 gets released

* [INFRA-18845](https://issues.apache.org/jira/browse/INFRA-18845): switch Sonar instance to sonarcloud.io

**2019-08-16  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M5-git-09_

* [JSPWIKI-893](https://issues.apache.org/jira/browse/JSPWIKI-893): Cannot search for bold words with `GermanAnalyzer`

* replaced all deprecated code

* [JSPWIKI-1115](https://issues.apache.org/jira/browse/JSPWIKI-1115): Upgrade SLF4J to 1.7.28 and commons-lang from 2.6 to 3.9
    * dev-only breaking change: if you were using commons-lang transitively on your extension,
    you must declare it explicitly or migrate it to commons-lang 3

**2019-08-06  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M5-git-08_

* [JSPWIKI-427](https://issues.apache.org/jira/browse/JSPWIKI-427): Keywords for Lucene Index

* [JSPWIKI-1114](https://issues.apache.org/jira/browse/JSPWIKI-1114): Show only part of Weblog entry on the overview page. Contributed by
  Ulf Dittmer, thanks!

* [JSPWIKI-1115](https://issues.apache.org/jira/browse/JSPWIKI-1115): Upgrade bundled dependencies for 2.11.0.M5
    * Flexmark 0.50.26
    * JUnit 5.5.1
    * Lucene 8.1.1
    * Selenide 5.2.8
    * Tika 1.22
    * Tomcat 8.5.43

**2019-16-07  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-07_

* [JSPWIKI-1097](https://issues.apache.org/jira/browse/JSPWIKI-1097) Various smaller JS refactorings, and bugfixes.

* Trim spaces from the rendered html to reduce page weight.

**2019-09-07  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-06_

* [JSPWIKI-427](https://issues.apache.org/jira/browse/JSPWIKI-427): Adding keyword support for JSPWiki pages.
  Use `[{SET keywords=a,b,c}]` to add keywords to a page.
  They will be shown in the info drop-down menu, and are added as
  `META` tags to your page.

* Remove XSS vulnerability on the plain editor section drop-down

* [JSPWIKI-1097](https://issues.apache.org/jira/browse/JSPWIKI-1097) Various smaller JS refactorings


**2019-04-07  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-05_

* Adapt to JAVA EE 7 XMLS scheme namespace to support container authentication.
  Minimum requirement since 2.11.0-M1 is JSP Servlet 3.1.
  (testcases with older `web.xml` still to be updated)


**2019-06-15  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-04_

* [JSPWIKI-1097](https://issues.apache.org/jira/browse/JSPWIKI-1097) Refactored `%%collapse` and `%%collapsebox`.
  Added keyboard support to expand/collapse lists and boxes. Bugfixes on cookie handling.


**2019-05-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-03_

 * [JSPWIKI-1112](https://issues.apache.org/jira/browse/JSPWIKI-1112) EDITOR input fields (changenote,comment-signature )
   vulnerable to XSS.

* [JSPWIKI-1097](https://issues.apache.org/jira/browse/JSPWIKI-1097) Minor JS updates (cookie handling, %%collapse)


**2019-05-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-02_

 * Improved styling of the WYSIWYG editor toolbar

* [JSPWIKI-1111](https://issues.apache.org/jira/browse/JSPWIKI-1111) Improve handling of `&entities;` in the WYSIWYG editor.

* Improve the web app manifest making JSPWiki a progressive web app.
  You can now install JSPWIKI on the homescreen of your mobile device or tablet
  for quicker access and improve experience.

* [JSPWIKI-1097](https://issues.apache.org/jira/browse/JSPWIKI-1097) JS updates to start replacing `mootools.js`  (cookie handling)


**2019-05-17  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M5-git-01_

* Accessibility improvements (ref. https://accessibilityinsights.io)

**2019-05-11  Juan Pablo Santos (juanpablo AT apache DOT org)**

* prepare release for 2.11.0.M4

**2019-05-02  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M4-git-13_

* [JSPWIKI-469](https://issues.apache.org/jira/browse/JSPWIKI-469) new [TikaSearchProvider](https://jspwiki-wiki.apache.org/Wiki.jsp?page=TikaSearchProvider) to index a lot more of attachments. It is not bundled
by default, as it brings in a lot of dependencies (+55MB).
    * See [TikaSearchProvider](https://jspwiki-wiki.apache.org/Wiki.jsp?page=TikaSearchProvider) for installation instructions
    * Search provider contributed by Ulf Dittmer, thanks!

* `LuceneSearchProvider` now indexes all attachment filenames, whether their content is parsed or not,
and also scans `.md` and `.xml` files.

* Updated missing es translations


**2019-05-01  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-12_

* [JSPWIKI-1104](https://issues.apache.org/jira/browse/JSPWIKI-1104) [InsertPagePlugin](https://jspwiki-wiki.apache.org/Wiki.jsp?page=InsertPagePlugin) 
  now also supports cookie based inserts.
  The UserPreferences page has been extended to allow the users to view and
  delete page-based cookies.


**2019-04-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-11_

* [JSPWIKI-1107](https://issues.apache.org/jira/browse/JSPWIKI-1107) Fixing XSS vulnerability in the navigation breadcrumbs (Trail link)

* Small ui improvement: make Attachment lists sortable on the attachment size field


**2019-04-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-10_

* [JSPWIKI-1107](https://issues.apache.org/jira/browse/JSPWIKI-1107), [JSPWIKI-1109](https://issues.apache.org/jira/browse/JSPWIKI-1109) Fixing XSS vulnerability in various plugins.

* [JSPWIKI-1106](https://issues.apache.org/jira/browse/JSPWIKI-1106) Adding the `jspwiki.attachment.forceDownload` property


**2019-04-28  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M4-git-09_

* [JSPWIKI-1110](https://issues.apache.org/jira/browse/JSPWIKI-1110) Upgrade bundled dependencies for 2.11.0.M4

* generate aggregated javadocs for http://jspwiki.apache.org/apidocs/index.html

**2019-04-27  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-08_

* [JSPWIKI-1107](https://issues.apache.org/jira/browse/JSPWIKI-1107) fixing file-type vulnerability

* Fixing consistency of the sidebar collapse in `Upload.jsp`

**2019-04-25  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-07_

* [JSPWIKI-1107](https://issues.apache.org/jira/browse/JSPWIKI-1107) uploading attachments with illegal filename causes XSS vulnerability
  Fixing file upload vulnerability.

**2019-04-23  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-06_

* [JSPWIKI-1109](https://issues.apache.org/jira/browse/JSPWIKI-1109) [ReferredPagesPlugin](https://jspwiki-wiki.apache.org/Wiki.jsp?page=ReferredPagesPlugin) with illegal characters in parameters
  causes XSS vulnerability

**2019-04-23  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-05_

* [JSPWIKI-1108](https://issues.apache.org/jira/browse/JSPWIKI-1108) interwiki links with illegal characters causes XSS vulnerability

* [JSPWIKI-1107](https://issues.apache.org/jira/browse/JSPWIKI-1107) uploading attachments with illegal filename causes XSS vulnerability
  Fixing side-effect on slimbox links, when rendering the caption with illegal characters.

**2019-04-22  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-04_

* [JSPWIKI-1107](https://issues.apache.org/jira/browse/JSPWIKI-1107) uploading attachments with illegal filename causes XSS vulnerability

**2019-04-05  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-03_

* [JSPWIKI-1100](https://issues.apache.org/jira/browse/JSPWIKI-1100) Add support for mixed css-class & css-style markup

**2019-04-05  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-02_

* [JSPWIKI-1101](https://issues.apache.org/jira/browse/JSPWIKI-1101) Improve rendering of `{{{inline preformatted text}}}`

* Change UI for attachement upload: by default, the FILE SELECTION input should be visible

**2019-04-05  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M4-git-01_

* Added interwiki link for location links (google maps)
  eg: `[Atomium|Location:Atomium, City of Brussels, Belgium]`

* Added plain editor configs as regular properties.
  By default, the editor preview, autosuggestion and tabcompletion are set.

* Various small js / css tweaks.

* Add format option to `<wiki:Author/>` to render force rendering of text iso link

**2019-03-22  Juan Pablo Santos (juanpablo AT apache DOT org)**

* prepare release for 2.11.0.M3

**2019-03-21  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M3-git-04_

* [JSPWIKI-1095](https://issues.apache.org/jira/browse/JSPWIKI-1095): `DefaultURLConstructor#getForwardPage( HttpServletRequest req )` now always returns `Wiki.jsp`

* [JSPWIKI-1096](https://issues.apache.org/jira/browse/JSPWIKI-1096): Upgrade bundled dependencies for 2.11.0-M3
    * flexmark to 0.40.24
    * lucene to 8.0.0
    * selenide to 5.2.2
    * slf4j to 1.7.26
    * tomcat to 8.5.39

**2019-03-19  Juan Pablo Santos (juanpablo AT apache DOT org)**

* [JSPWIKI-1094](https://issues.apache.org/jira/browse/JSPWIKI-1094): `mvn eclipse:eclipse` fails, patch provided by Christian Fröhler, thanks! (no version bump)

**2019-03-17  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M3-git-03_

* Remove unused top level JSP. See also [JSPWIKI-1093](https://issues.apache.org/jira/browse/JSPWIKI-1093)

**2019-03-09  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M3-git-02_

* Adding Drag & Drop capabilities to the standard JSPWiki editor:
  links automatically are converted to `[description|url]` format
  other content (text, tables, etc...) will be converted to wiki-markup.


**2019-03-09  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M3-git-01_

* UserPreferences fixes
    * new toggle style for on/off switches
    * restyle bi-model checkboxes for Page Layout setting
    * fix a few style issues in the UserPreferences when in Dark Mode

* The JSPWiki template should by default open up in the light mode.

* Consistent css-style for the toolbar of the jspwiki wysiwyg editor

* Added `Description` meta-tag to improve on-page SEO

* Added the `Content-Security-Policy` meta-tag to reduce the risk of XSS attacks.


**2019-03-04  Juan Pablo Santos (juanpablo AT apache DOT org)**

* prepare release for 2.11.0.M2

**2019-02-21  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M2-git-10_

* `o.a.jwpiki.util` package moved to its own submodule

* remove `DefaultAclManager` dependency from `WikiEngine` and other small refactors

**2019-02-15  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M2-git-09_

* Clean browsers LocalStorage cache of unsaved page edits
  when switching between plain & WYSIWYG editors.

* Fix (resizable) height of the wysiwig editor HTML viewer.


**2019-02-15  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M2-git-08_

* WYSIWYG editor was still pointing to the Haddock template.


**2019-02-15  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M2-git-07_

* [JSPWIKI-1088](https://issues.apache.org/jira/browse/JSPWIKI-1088): Fallback to default template if `jspwiki.templateDir` if the requested template folder is
  not found

* [JSPWIKI-1092](https://issues.apache.org/jira/browse/JSPWIKI-1092): Upgrade bundled dependencies
    * flexmark to 0.40.16
    * gson to 2.8.5
    * lucene to 7.7.0
    * nekohtml to 1.9.22
    * stripes to 1.7.0-async (needed to test [JSPWIKI-1088)
    * tomcat to 8.5.38

* fixed css path and packaging of webresources

* updated both new and missing es resources

**2019-02-14  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M2-git-06_

* lots of internal refactorings, mostly around a) Task's implementations extracted to their own package
  and b) `PageManager` and `PageLock` moved to `o.a.w.pages` package, in order to untangle some class/package
  circular dependencies

* JUnit updated to 5.4.0

**2019-02-13  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M2-git-05_

* Adding DARK template to the User Preference.


**2019-02-13  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M2-git-04_

* [JSPWIKI-1091](https://issues.apache.org/jira/browse/JSPWIKI-1091): Broken DIFF view
  Added some missing JSP in default template. (caused by template rename)

* Added missing `<html lang=..>` localization


**2019-02-08  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M2-git-03_

* merged [PR#10](https://github.com/apache/jspwiki/pull/10): `DOCTYPE` and `HTML lang="en"` attribute addition
  (thanks to Scott Fredrickson)

* `o.a.w.util` package ready to be extracted to its own module

* new `o.a.w.pages` package, with `PageSorter` becoming a `Comparator< String >` and no longer accesible from WikiContext
    * `PageSorter` is accesed now through `PageManager`
    * to compare WikiPages use `wikiPage.compareTo( anotherWikiPage );`
    * `sortPages` methods are also gone, as an alternative you can use something along these lines (see
    `AttachmentManager#listAttachments` for another example):
    `Collections.< WikiPage >sort( pages, Comparator.comparing( WikiPage::getName, m_engine.getPageManager().getPageSorter() ) );`
    * as a side effect of this change, `AbstractReferalPlugin#filter[AndSort]Collection` methods operate with
    `Collection< String >` instead of with plain `Collection` (except for `RecentChangesPlugin`, plugins
    inheriting this method were already doing it), custom plugins inheriting this method will have to use
    new `filterWikiPageCollection` method instead

* other internal code refactors

**2019-02-03  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M2-git-02_

* [JSPWIKI-1074](https://issues.apache.org/jira/browse/JSPWIKI-1074): Fixed buggy header width in Fixed Page Layout

**2019-02-03  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M2-git-01_

* [JSPWIKI-1090](https://issues.apache.org/jira/browse/JSPWIKI-1090): Fixed READER view, bug caused by the rename of the HADDOCK template

**2019-01-25  Juan Pablo Santos (juanpablo AT apache DOT org)**

* prepare release for 2.11.0.M1

**2019-01-20  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-15_: [JSPWIKI-1086](https://issues.apache.org/jira/browse/JSPWIKI-1086) - selenide-based functional tests infrastructure + login/logout
  associated tests (selenium tests currently kept for reference)

* [JSPWIKI-1085](https://issues.apache.org/jira/browse/JSPWIKI-1085) - JSPWiki locale can be set server-side - to determine the locale used, the following order is used:
  - user-preference settings
  - if not set, see if there is a locale set server-side, as noted by
      `jspwiki.preferences.default-locale` setting on `jspwiki[-custom].properties`
  - if not set, browser's preferred language setting
  - if not set, JVM's default

* [JSPWIKI-1087](https://issues.apache.org/jira/browse/JSPWIKI-1087) - upgrade bundled dependencies
    * commons-fileupload to 1.4
    * flexmark to 0.40.12
    * hsqldb updated to 2.4.1
    * cargo plugin to 1.7.1

**2018-12-25  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-14_: upgrade bundled dependencies
    * commons-fileupload to 1.3.3
    * ehcache to 2.10.6
    * flexmark to 0.35.0
    * junit to 5.3.2
    * lucene to 7.6.0
    * tomcat to 8.5.37

* escape entities on `Captcha.jsp` request parameters

* [JSPWIKI-1084](https://issues.apache.org/jira/browse/JSPWIKI-1084) - `Jenkinsfile` now builds both source and website, `jspwiki-site` job can still be triggered manually

* few more polishing and minor refactors

**2018-12-24  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M1-git-13_: AJAX based search results are not shown.
  Fixing `AJAXSearch.jsp`.
  The java `<>` diamond operator is not allowed for source level below 1.7.

**2018-12-15  Dirk Frederickx (brushed AT apache DOT org)**

* _2.11.0-M1-git-12_: [JSPWIKI-1083](https://issues.apache.org/jira/browse/JSPWIKI-1083) - fixing bugs related to the new default template.
    * Rename HADDOCK template to DEFAULT template.
    * Moving a number of default jsp's (common for all templates)
    from templates/210 to templates/default.

**2018-12-07  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-11_: [JSPWIKI-1082](https://issues.apache.org/jira/browse/JSPWIKI-1082) - fix from 2.11.0.M1-rc1 - revert change from commit
  `87bf9b941fdf` (Nov/11/2018) that ended up causing lots of `ClassCastException`

**2018-12-03  Juan Pablo Santos (juanpablo AT apache DOT org)**

* prepare release for 2.11.0.M1

**2018-11-20  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-10_: backwards-incompatible change - move `TextUtil.getRequiredProperty` to `WikiEngine`

* some more polishing and minor refactors

**2018-11-13  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-09_: fix JSP compilation error; added jspc plugin to ensure JSPs remain well-formed

* JSPWiki's custom tags TLD moved to main module

* some more polishing and minor refactors

**2018-11-11  Juan Pablo Santos (juanpablo AT apache DOT org)**

* no version bump: some more polishing and minor refactors

**2018-11-05  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-08_: [JSPWIKI-1080](https://issues.apache.org/jira/browse/JSPWIKI-1080) try to load as many external third-party plugin jars as possible,
  instead of all-or-nothing

* small backwards-incompatible changes:
    * `CryptoUtil#verifySaltedPassword` doesn't throw `UnsupportedEncodingException` anymore
    * `TextUtil#urlDecode` methods don't throw `UnsupportedOperationException` anymore
    * `ClassUtil#getMappedObject` methods now throw `ReflectiveOperationException`, `IllegalArgumentException`
    instead of `WikiException`
    * `ClassUtil#getMappedClass` method now throws `ClassNotFoundException` instead of `WikiException`

* fix possible concurrency issue at `ReferenceManager#serializeAttrsToDisk`

* remove commons-codec usage from source (it's carried onto the war as a transitive
  dependency though), plus several other small refactors

**2018-11-02  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-07_: removed a bunch of warnings throughout the code

* added a `Jenkinsfile`

* small backwards-incompatible change: `WikiEngine#getRecentChanges()` now returns a `Set` instead of a `Collection`

**2018-10-30  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-06_: fix JSPs using methods removed on 2.11.0-M1-git-05

**2018-10-29  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-05_: [JSPWIKI-1081](https://issues.apache.org/jira/browse/JSPWIKI-1081) - maven build refactor
  - java code split into its own module: custom extensions should now rely on
    the new `org.apache.jspwiki:jspwiki-main` dependency, instead of the
    `org.apache.jspwiki:jspwiki-war:classes` old one
  - `parent-pom`: clean-up + dependencies and plugins versions' set as maven properties
  - `jspwiki-markdown` module included into main war

* several small code refactors, including some backwards-incompatible ones:
    * `PropertiesUtils` moved to the `util` package
    * `ReferenceManager#findReferrers` returns `Set< String >` instead of `Collection< String >`
    * `AttachmentManager#listAttachments` returns a `List< Attachment >` instead of a `Collection`
    * `WikiEngine#findPages( String query, WikiContext wikiContext )` is removed, use
    `WikiEngine#getSearchManager()#findPages( String query, WikiContext wikiContext )` instead

**2018-10-26  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-04_: [JSPWIKI-1078](https://issues.apache.org/jira/browse/JSPWIKI-1078) - update tests to JUnit 5.3.1

* updated versions of maven plugins

* flexmark updated to 0.34.56

**2018-10-21  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-03_: [JSPWIKI-1083](https://issues.apache.org/jira/browse/JSPWIKI-1083) - Haddock is now the default template
    * to bring back the 2.10 template set the `jspwiki.templateDir` property to `210`

* [JSPWIKI-1077](https://issues.apache.org/jira/browse/JSPWIKI-1077) - added the following pages to the core pages' bundles, as they enable some more haddock functionality
    * [CSSBackgroundGradients](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Background%20Gradients)
    * [CSSBackgroundPatterns](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Background%20Patterns)
    * [CSSInstagramFilters](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Instagram%20Filters)
    * [CSSPrettifyThemeTomorrowNightBlue](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Prettify%20Theme%20Tomorrow%20Night%20Blue)
    * [CSSPrettifyThemeTomorrowPrism](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Prettify%20Theme%20Prism)
    * [CSSRibbon](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Ribbon)
    * [CSSStripedText](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Striped%20Text)
    * [CSSThemeCleanBlue](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Clean%20Blue%20Theme)
    * [CSSThemeDark](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Dark%20Theme)

**2018-09-30  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-02_: [JSPWIKI-1076](https://issues.apache.org/jira/browse/JSPWIKI-1076) - minimum required Servlet / JSP is now 3.1 / 2.3

* [JSPWIKI-1079](https://issues.apache.org/jira/browse/JSPWIKI-1079) - add `jspwiki-markdown` to the main build

* flexmark updated to 0.34.46

**2018-09-14  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.11.0-M1-git-01_: [JSPWIKI-1076](https://issues.apache.org/jira/browse/JSPWIKI-1076) - minimum required to build/run is now Java 8 / Maven 3.5.0

* fix for [JSPWIKI-932](https://issues.apache.org/jira/browse/JSPWIKI-932) - Failed to start managers. `java.util.ConcurrentModificationException`

**2018-08-31  Juan Pablo Santos (juanpablo AT apache DOT org)**

* update flexmark to 0.34.22 and ASF parent pom to 21

* prepare release for 2.10.5

**2018-08-31  Siegfried Goeschl (sgoeschl@apache.org)**

* _2.10.5-git-09_: [JSPWIKI-1073](https://issues.apache.org/jira/browse/JSPWIKI-1073) Upgrade the `jspwiki-portable` build

**2018-07-08  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.5-git-08_: update flexmark to 0.34.6 and slf4j to 1.7.25

**2018-07-09  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.5-git-07_: fix to plain haddock editor related to the new
  functionality to recover unsaved page edits.

  You can test this like so:
    * open a page for edit in the haddock template
    * make some changes to the page
    * move to another page without saving (or close the browser tab)
    * click LEAVE when the popup `changes you made may not be saved` appears.
    * reopen the page for edit
    * you should now receive a new popup which allows you to restore or abandon
    the unsaved changes


**2018-07-08  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.5-git-06_ : update bundled Apache Tomcat on portable JSPWiki to 7.0.90

**2018-07-01  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.5-git-05_ : few more haddock template updates

* The haddock editor has now a page restore functionality to recover unsaved page
  edits.  When your session or login timer expires, or your accidentally close a
  browser tab without saving, etc...  your last changes are now preserved in the
  localstorage area of your browser.
  At the start of a new edit sessions,  you will be presented with a modal dialog
  to restore the cached page.

* The "attach" and the "info" menu are now combined into a single navigation menu.
  The INFO or ATTACHMENT UPLOAD page can be accessed with an additional
  click of a button. This also improves usability on touch devices.

* Small refinements of the Search and User buttons (top-right corner)
  to improve support for touch devices. (issue reported by Juan Pablo)


**2018-06-17  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.5-git-04_  Fine-tuning Haddock for mobile devices.

* Improve accessibility on hover-menu's for touch-devices. They'll open after
  a touch-down event; and will close when touching any area outside the menu.

* Fixing access to the Find and User menu's for touch devices.

* Several small style improvements on the navigation bar for mobile devices
  (hiding CARET to indicate hover-menu's, ...)

* Added touch-support for `%%magnify` style.

* Breadcrumbs are now moved to a proper drop-down menu (...) on the navigation bar
  instead of the previously not-so-obvious 'mouse-over-zone' under the pagename.
  This also makes breadcrumbs accessible to the tablet & phone users.

* Fixed a display error when uploading multiple attachements in one step.


**2018-06-05  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.5-git-03_  [JSPWIKI-1071](https://issues.apache.org/jira/browse/JSPWIKI-1071) Ajax request header 'Connection' forbidden
  impacting the DEFAULT jspwiki template.


**2018-06-03  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.5-git-02_

* [JSPWIKI-1070](https://issues.apache.org/jira/browse/JSPWIKI-1070): (properly) Support JDK 10 builds

* Generate sha1 and sha512 checksums for build artifacts

**2018-05-27  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.5-git-01_

* [JSPWIKI-1070](https://issues.apache.org/jira/browse/JSPWIKI-1070): Support JDK 10 builds

**2018-04-29  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.4-git-10_  Bugfix in `AddCSS.JS` related to url() parsing

**2018-04-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.4-git-09_  Better support for mobile devices in the Haddock Template
     See [JSPWIKI-835](https://issues.apache.org/jira/browse/JSPWIKI-835)
       * Updates various styles to better fit small screens.  (tabs, accordion, columns, ...)
       * On small screens,  the sidebar is by default closed.
On wider screens, the sidebar is open/closed based on the previous state
which is saved in a cookie.

**2018-04-22  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.4-git-08_  Adding support for mobile devices to the Haddock Template
     See [JSPWIKI-835](https://issues.apache.org/jira/browse/JSPWIKI-835)
     Part-1 -- many style adjustment to fit smaller screens
       * Sidebar now slides over the main page on mobile devices
       * Header (pagename, and menu bar) are better fit for small screens
       * Width of several menu's and dropdowns is restricted for small screens
       * Editor toolbar resized for small screens

     Other:
       * [JSPWIKI-1058](https://issues.apache.org/jira/browse/JSPWIKI-1058) Editor toolbar now remains on screen, even when scrolling down
       * Small tweaks of the `RecentChanges` output
       * [JSPWIKI-1068](https://issues.apache.org/jira/browse/JSPWIKI-1068) : fixing positioning of the `TitleBox`


**2018-04-19  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.4-git-07_ Adding a favicon to the haddock template

**2018-04-11  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.4-git-06_  [JSPWIKI-1069](https://issues.apache.org/jira/browse/JSPWIKI-1069) i18n errors in german translation

**2018-03-31  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.4-git-05_  [JSPWIKI-1068](https://issues.apache.org/jira/browse/JSPWIKI-1068) `TitleBox` rendering on Haddock

**2018-03-29  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.4-git-04_

* [JSPWIKI-1039](https://issues.apache.org/jira/browse/JSPWIKI-1039) / [JSPWIKI-1067](https://issues.apache.org/jira/browse/JSPWIKI-1067): ACLs are not taken into account when cache
  is disabled / View-only ACLs are not enforced

**2018-03-29  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.4-git-03_

* Main page can be revealed when invoking some JSPs without parameters
  (reported by Motohiko Matsuda, thanks!)

**2018-03-25  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.4-git-02_

* Further fix on [JSPWIKI-1064](https://issues.apache.org/jira/browse/JSPWIKI-1064) - Link to non-existing page doesn't change if
  linked page is created, not all page caches were properly flushed.

**2018-03-04  Juan Pablo Santos (juanpablo AT apache DOT org)**

* Fixed all javadoc errors when building using java 8 - no version bump

**2018-02-25  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.4-git-01_  Fixing Admin JSP Bugs

* Quick fix to admin and user management pages: adding proper tabs to
  the ADMIN page, fixing javascript bugs in user management page
  (reported by Harry)

**2018-02-03  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.3-git-48_

* [JSPWIKI-835](https://issues.apache.org/jira/browse/JSPWIKI-835) - better mobile experience: move sidebar to bottom on
  extra-small devices (< 768px, only on haddock template)

* Some internal refactors to `org.apache.wiki.WatchDog`

* Flexmark updated to 0.28.38.

**2018-01-27  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.3-git-47_

* Another fix on [JSPWIKI-1064](https://issues.apache.org/jira/browse/JSPWIKI-1064) - Link to non-existing page doesn't change if
  linked page is created, as the page render cache must also take into account
  if the plugins should be rendered or not.

* JSPWiki portable: Update bundled Apache Tomcat to latest version on 7.x branch
  and launch4j to 3.11.

* JSPWiki portable: As appbundler is not longer accesible through java.net, use
  fork at https://github.com/teras/appbundler instead.

* Updated maven plugins' versions to latest + use latest ASF parent pom.

**2018-01-21  Juan Pablo Santos (juanpablo AT apache DOT org)**

* Updated `<scm/>` section from main `pom.xml` so it points to github repo

* Flexmark updated to 0.28.34 (no version bump).

**2017-12-30  Juan Pablo Santos (juanpablo AT apache DOT org)**

* Upgraded all test from JUnit 3 to JUnit 4 (no version bump).

**2017-12-27  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.3-git-46_

* [JSPWIKI-802](https://issues.apache.org/jira/browse/JSPWIKI-802) - Markdown support
    * urls are not set on attribute provider derived classes, as this has some
    unwanted side effects. Introduced `JSPWikiLink`, a wrapper around Flexmark's
    links which retain the original wiki link.
    * updated Flexmark to 0.28.24.

**2017-12-16  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.3-git-45_

* Fixed [JSPWIKI-1064](https://issues.apache.org/jira/browse/JSPWIKI-1064) - Link to non-existing page doesn't change if linked page
  is created

* Improvement on [JSPWIKI-843 - exclude tests from `test-jar`

**2017-12-08  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.3-git-44_

* [JSPWIKI-802](https://issues.apache.org/jira/browse/JSPWIKI-802) - initial [markdown support](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Markdown%20Support)

**2017-12-03  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.3-git-43_

* Fixed [JSPWIKI-843](https://issues.apache.org/jira/browse/JSPWIKI-843) - generate `test-jar` for `jspwiki-war` (wasn't being generated)

* Extract `WikiLink` parsing operations from `JSPWikiMarkupParser`, `LinkParser`,
  `VariableManager` to their own class, `LinkParsingOperations`

* Move `(private) JSPWikiMarkupParser#getLocalBooleanProperty` to
 `(public) WikiContext#getBooleanWikiProperty`

**2017-11-16  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.3-git-42_

* small refactor to move some private constants to public at `MarkupParser` and
  `WikiRenderer`, so they can be reused throughout the code and custom extensions.

**2017-08-22  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.3-git-41_

* `WysiwygEditingRenderer` isn't hardcoded in JSPs anymore, and can be substituted
  through `jspwiki.renderingManager.renderer.wysiwyg` property on `jspwiki.properties`.
  This allows to develop custom renderers which do not expect the same information
  as the existing ones.

* Fixed `DefaultFilterManager#modules` not returning `Collection< WikiModuleInfo >`,
  as it was supposed to. This method wasn't used anywhere, until now, where it
  is used through FilterBean, a new JSPWiki AdminBean exposing existing filters
  information.

* `FilterBean` runs parallel to `PluginBean`, which allowed some more minor internal
  refactorings and code polishing.

* Moved some constants from `JSPWikiMarkupParser` to `MarkupParser`.

**2017-07-16  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.3-git-40_

* Some small changes around `JSPWikiMarkupParser`, needed to develop
  custom markup parsers, which do not rely on the former class or
  `WikiDocument`.

* Some other minor internal refactorings and code polishing

**2017-05-14  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-git-39_

* [JSPWIKI-1059](https://issues.apache.org/jira/browse/JSPWIKI-1059) - `ConcurrentModificationException` in `SessionMonitor`

**2017-04-22  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-38_  Haddock Template updates

* Fixing some minor issues with the Image plugin ALIGN parameter

* `%%magnify`: add a magnifying glass to to reveal details of a cropped images.
  Hover the mouse above the image to see the effect.

* Redesigned Header
  The header (including the menu bar) now shifts up when you scroll down,
  and reappears when scrolling back-up.  So you can quickly have access
  to all the menu's and the quick search function.  Clicking the pagename
  in the header get's you immediately back to the top of the page.
  The menu bar has now become part of the (coloured) header section.

* Editor:
  Improved the speed of the editor quick preview when editing large pages.
  Updates to various editor auto-suggest dialogs.


**2017-03-18  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-37_  Haddock Template

* [JSPWIKI-1055](https://issues.apache.org/jira/browse/JSPWIKI-1055):  Haddock Special Block Marker
  Added a few icons to improve rendering of contextual blocks in B/W.

**2017-03-14  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-36_  Haddock Template

* Few fixes on the `%%column` style

**2017-03-12  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-35_  Haddock Template updates

* [ImagePlugin](https://jspwiki-wiki.apache.org/Wiki.jsp?page=Image):  minor update to apply the css class and styles
  parameters to the image container, not to the whole table;
  escape HTML entities in captions.

* several CSS stylesheet additions
    * image styles: effects, captions, frames, animation
    * background styles: color, background images

* `%%columns`: bugfix, few more column styles

**2017-03-05  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-git-34_

* [JSPWIKI-1044](https://issues.apache.org/jira/browse/JSPWIKI-1044) - URL in password recovery mail is relative while it should be absolute

**2017-03-03  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-git-33_

* Fixed [JSPWIKI-1051](https://issues.apache.org/jira/browse/JSPWIKI-1051) - Startup fails due to `jspwiki.log (Permission denied)`

**2017-02-04  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-32_

* [JSPWIKI-1050](https://issues.apache.org/jira/browse/JSPWIKI-1050) The find and replace do not seem to work  (Haddock editor)

  Pressing Ctrl-F has been removed as short-cut key for the wiki editor.
  Ctrl-F brings you always to the standard browser dialog. (as expected)
  To open JSPWiki's Find&Replace dialog, click the toolbar button.

  The Find&Replace dialog now also indicates if text was selected before.
  If that case, the Find&Replace will run only on the selected text.


**2017-01-21  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-git-31_

* Fixed [JSPWIKI-1047](https://issues.apache.org/jira/browse/JSPWIKI-1047) - Access Control Lists do not work if page cache is deactivated (thanks to E. Poth)
* minor bugfix in [SessionsPlugin](https://jspwiki-wiki.apache.org/Wiki.jsp?page=SessionsPlugin) (`StringIndexOutOfBoundsException` when using the `distinctUsers` option)

**2017-01-21  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-30_
  [JSPWIKI-1046](https://issues.apache.org/jira/browse/JSPWIKI-1046) IE11 detection fixed, txs to patch of Albrecht Striffler.


**2017-01-17  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-29_
  [JSPWIKI-1046](https://issues.apache.org/jira/browse/JSPWIKI-1046) IE11 scrolling in content page blocked.
  IE detection not working on IE11; ok on Edge. New detection method implemented.

**2017-01-15  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-28_
  [JSPWIKI-1045](https://issues.apache.org/jira/browse/JSPWIKI-1045) IE11 rendering is broken for `%%graphBars` using color names.

**2017-01-14  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-git-27_.

* Fixed [JSPWIKI-1042](https://issues.apache.org/jira/browse/JSPWIKI-1042) - Impossible to change user profile loginName, fullname, password (patch by Eric Kraußer)
* Fixed [JSPWIKI-1043](https://issues.apache.org/jira/browse/JSPWIKI-1043) - Encode email subjects as UTF-8 (patch by Eric Kraußer)

**2017-01-06  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-26_
  [JSPWIKI-1041](https://issues.apache.org/jira/browse/JSPWIKI-1041): fix some lines in `skin.css`

**2017-01-03  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-git-25_: few Haddock template fixes

* Remove the editor suggestion-dialogs scroll-bars (only visible on Windows)
  Fix a few formatting errors in sugestion dialogs.

* Fixed the width of the table filter input field

* Added console-logs to the editor for debugging on IE/EDGE
  (positioning of suggestion dialogs seems to be broken)

* Update JSON XmlHttpRequest header to avoid IE/EDGE XML5619 Document Syntax errors

**2016-12-31  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-git-24_.

* Fixed [JSPWIKI-1035](https://issues.apache.org/jira/browse/JSPWIKI-1035) - merged branch [JSPWIKI-1035 back to master

**2016-12-27  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-23_.

* Fix nesting of ul/li in [ReferringPagesPlugin](https://jspwiki-wiki.apache.org/Wiki.jsp?page=ReferringPagesPlugin).

**2016-12-26  Harry Metske (metskem AT apache DOT org)**

* Fixed [JSPWIKI-1035](https://issues.apache.org/jira/browse/JSPWIKI-1035) - Get rid of `jspwiki.baseURL`
  fixed remaining unit tests
* changed Release postfix from `svn` to `git`

**2016-12-19  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-22_  Various HADDOCK updates & fixes.

* [JSPWIKI-1038](https://issues.apache.org/jira/browse/JSPWIKI-1038): Fix allowing flexbox in Edge. (but not in IE)


**2016-12-18  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-21_  Various HADDOCK updates & fixes.

* [JSPWIKI-1038](https://issues.apache.org/jira/browse/JSPWIKI-1038): IE's flexbox implementation is broken,
  no workaround for now.


**2016-12-17  Dirk Frederickx (brushed AT apache DOT org)**

* Fixing `RSSGenerator` test with latest `WeblogPlugin` changes

**2016-12-17  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-20_  Various HADDOCK updates & fixes.

* JSPWiki BLOGS
  Final update of the styling of JSPWiki's BLOGs.
  Also the fancy weblog calendar is now back in the sidebar
  when viewing a blog post.

* Add-Comment JSP refactored:
  When adding a comment to a wiki-page, you will see the content of the main page
  at the top of the editing screen,  so you know what your are commenting on.
  Improved hover menu on the SAVE/POST button for entering the change-note and
  comment-signature fields.

* Plain Editor:
  Many JS improvements related to the handling of text snippets.
  Several style updates to the editor and the auto-suggest dialogs.

* Small refactoring of the `Install.jsp` to fit the bootstrap framework.

* `%%columns-<width>`: fix the broken width parameter

* `%%graphbars`: fix support for HTML-color-names (chrome, FF)

* [JSPWIKI-979](https://issues.apache.org/jira/browse/JSPWIKI-979): fix support for `%%small` `{{{ preformatted text blocks }}}`

* [JSPWIKI-937](https://issues.apache.org/jira/browse/JSPWIKI-937): fix handling of broken image links (also for FF)
  Fix for rendering of the attachement icon, e.g. in `RecentChanges` page.

* Improved visualisation of interwiki links for Edit, Raw, Reader and Groups.

* The Delete group command now gets you back to the Group view pages,  so it is
  easier for issuing subsequent group commands. (create,edit,delete)

* Added `%%maps` to generate google maps viewer by simply including the address.

* Few html5 FORM improvements: required fields, email input type, ...

* Updated to bootstrap 3.3.7.


**2016-12-13  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-19_

* [JSPWIKI-1032](https://issues.apache.org/jira/browse/JSPWIKI-1032) : Use image `src` attribute instead of `href`

**2016-12-13  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-18_

* [JSPWIKI-1037](https://issues.apache.org/jira/browse/JSPWIKI-1037) UI will not display with IE 9 or IE10.
   Issue with Flexbox implementation in IE.  (also applies to IE11)

* Small style update on `%%categories` dropdown

**2016-12-11  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-17_

* Allow concatenation of css-styles (classes) by using a `.` separator,
  which is useful when adopting styles from the bootstrap framework

  EG. `%%btn.btn-primary.btn-xs This looks like a small Button /%`

**2016-12-03  Harry Metske (metskem AT apache DOT org)**
* Fixed [JSPWIKI-1036](https://issues.apache.org/jira/browse/JSPWIKI-1036) - Search for non-Latin characters fails (reported by Peter Paessler)

**2016-09-16  Harry Metske (metskem AT apache DOT org)**
* Fixed [JSPWIKI-1033](https://issues.apache.org/jira/browse/JSPWIKI-1033) - Incorrect relative navigations (reported by Niklas Polke)

**2016-09-16  David Vittor (dvittor AT apache DOT org)**
* Test commit to our new git repo.

**2016-09-16  Harry Metske (metskem AT apache DOT org)**
* Test commit to see how our new git repo works.

**2016-08-25  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-svn-14_

* Fixed [JSPWIKI-1031](https://issues.apache.org/jira/browse/JSPWIKI-1031) provide stacktrace when throwing `InternalWikiException`, fix by Jürgen Weber.

**2016-08-18  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-svn-13_

* Fixed [JSPWIKI-1029](https://issues.apache.org/jira/browse/JSPWIKI-1029) WebLogic does not find the properties file, fix by Jürgen Weber.

**2016-08-18  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-svn-12_

* Fixed [JSPWIKI-396](https://issues.apache.org/jira/browse/JSPWIKI-396) UTF-8 characters in wiki pages incorrectly rendered if served by Weblogic
  A rigorous fix by Jürgen Weber, ditched `UtilJ2eeCompat`, introduced new property `jspwiki.nofilterencoding`.

**2016-04-17  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-svn-11_

* Fixed [JSPWIKI-936](https://issues.apache.org/jira/browse/JSPWIKI-936) error when remove page with link (Fix by Andrew Krasnoff)

**2016-04-17  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-svn-10_

* Fixed [JSPWIKI-935](https://issues.apache.org/jira/browse/JSPWIKI-935)  `RenderingManager` uses ehcache if `jspwiki.usePageCache = false`

**2016-04-06  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-9_  Few fixes on the HADDOCK template

* improved styling of broken image links

* [JSPWIKI-934](https://issues.apache.org/jira/browse/JSPWIKI-934) Haddock: "page modified" markup differs to the original edits
  Improved styling of the PageModified/Conflict jsp's

* Allow google-fonts in `%%add-css`


**2016-04-03  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-8_  Few more fixes on the HADDOCK template

* Reorganize the attachment detail view, changing the
  order of columns to a more logical format.

* Improve the rendering of the `RecentChanges` page

* Fix the font for text in buttons with an icon

* Fix the popup dialog position in the plain editor
  in case the textarea contains `<`, `>` or `&` characters.

* Hide the section-editlinks for weblog comments.

* Fix the handling of the editor-type switch in the editor.


**2016-03-27  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-7_  Few more small fixes on the HADDOCK template

* [JSPWIKI-918](https://issues.apache.org/jira/browse/JSPWIKI-918) HADDOCK: the "view" menu is back as a better way
  to navigate back to the main page from "Attach" or "Info" views.
  (also removed the ugly "Back to Parent Page" button)

* [JSPWIKI-901](https://issues.apache.org/jira/browse/JSPWIKI-901) : Undo/Redo doesn't work in HADDOCK editor

* [WeblogPlugin](https://jspwiki-wiki.apache.org/Wiki.jsp?page=WeblogPlugin): added support for filtering weblog entries according to weblog
     start-date and number of days. Now you can select weblog entries
     from a link from the [WeblogArchive](https://jspwiki-wiki.apache.org/Wiki.jsp?page=WeblogArchivePlugin) plugin.

* [JSPWIKI-897](https://issues.apache.org/jira/browse/JSPWIKI-897) : Long page names in Haddock don't wrap gracefully
     Fixing printing issues with long page names.

* Replace the attachment info icon, for not-inlined attachments

* [JSPWIKI-904](https://issues.apache.org/jira/browse/JSPWIKI-904): HADDOCK – the display status of the LeftMenu is retained,
  also after a page refresh.  (by means of a new "Sidebar" user-pref cookie)
  The "Hide-Sidebar" option is obsolete and thus removed from the UserPreferences.


**2016-03-15  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-svn-6_

* Fixed [JSPWIKI-931](https://issues.apache.org/jira/browse/JSPWIKI-931) [VersioningFileProvider](https://jspwiki-wiki.apache.org/Wiki.jsp?page=VersioningFileProvider) sets page author to `unknown` when it should be an authenticated user


**2016-03-12  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-5_

* `%%ADD-CSS`: fix regexp for inline images on IE.

* Fix posting of comments in the Haddock template

* Fixed some missing localization of the weblogplugin.
  Few more tweaks of the styling of weblog entries & comments.


**2016-03-08  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-4_  Few more small fixes related to the HADDOCK template

* Few fixes on well formed HTML (`SearchBox.jsp`, `PageInfo.jsp`, `Nav.jsp`)

* Fixed some missing localizations in `Nav.jsp`.

* Various improvements of the JSPWiki Weblog implementation and css styling.

* Only show scrollbars on prettified blocks when appropriate (WINDOWS issues)


**2016-03-08  Harry Metske (metskem AT apache DOT org)**

* _2.10.3-svn-3_

* Added `MaxPageNameLength` support in [SpamFilter](https://jspwiki-wiki.apache.org/Wiki.jsp?page=SpamFilter)

**2016-02-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-2_  Few more small fixes on the HADDOCK template

* Added 2 new inter wiki references :
    * `[Raw:MainPage]` for displaying the raw wikimarkup of a page
    * `[Reader:MainPage]` to display a simplified reader view of a page
      (no left menu, layout fit for printing)

* Fixing JS error on <IE11 : `missing Array.from()` (compatibility with mootools 1.5.1)

* Fix for flexbox feature test  (IE)


**2016-02-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.3-svn-1_  Various small fixes on the HADDOCK template

* Fix `%%viewer` "Mixed content" error  (avoid serving http content via https )
* Fix visibility if the Titlebox page has no content
* Add fallback for IE, when the browser doesn't support FLEXBOX support
* Fix scrollbars on prettified sections on windows (IE, Chrome)
* Add fallback font (SegoeUI) for windows because Helvetica Neue is not supported

* Fix consistency of the styling of the "OK" buttons in many forms.
* Fix indentation of section dropdown entries (plain editor)
* Fix sorting by dates in the Attachment and Info view
* [JSPWIKI-921](https://issues.apache.org/jira/browse/JSPWIKI-921): increase legibility of the plain editor
* [JSPWIKI-928](https://issues.apache.org/jira/browse/JSPWIKI-928): fix odd fonts in the user control panel pop-up window
* Add new Apache `feather.png` as logo background

* Upgrade to mootools 1.6.0


**2016-02-05  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-43_

* Added IP ban support in [SpamFilter](https://jspwiki-wiki.apache.org/Wiki.jsp?page=SpamFilter)

**2016-02-06  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.2-svn-42_

* [JSPWIKI-570](https://issues.apache.org/jira/browse/JSPWIKI-570): Cannot use another `MarkupParser` - hardcoded references to
  `RenderingManager` and `JSPWikiMarkupParser` - thanks to Piotr Tarnowski for all the
  analysis at [JSPWIKI-570](https://issues.apache.org/jira/browse/JSPWIKI-570)

**2016-02-02  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.2-svn-41_

* [JSPWIKI-852](https://issues.apache.org/jira/browse/JSPWIKI-852): `JSPWikiMarkupParser` should report on which page a plugin was missing

**2015-12-09  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.2-svn-40_

* [JSPWIKI-923](https://issues.apache.org/jira/browse/JSPWIKI-923): `doreplace.png` image is missing from [CleanBlue](https://jspwiki-wiki.apache.org/Wiki.jsp?page=CleanBlue) skin

**2015-09-19  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-39_

* [JSPWIKI-916](https://issues.apache.org/jira/browse/JSPWIKI-916) Pre-formatted text within a list renders
  to an unpleasantly small font size, due to relative font sizing.

**2015-09-07  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-38_

* [JSPWIKI-903](https://issues.apache.org/jira/browse/JSPWIKI-903) Fixed a page redirect after attachment delete.

**2015-09-06  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-37_  Few Attachment tweaks in the HADDOCK template

* Fixed display issue with long attachment names
* Show loading animation after pressing the upload button
* Improved display of file sizes with support for KB, MB, GB, TB.


**2015-09-05  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-36_  Improved Attachment upload in the HADDOCK template

* Fixed the `AttachementServlet` so you can now select multiple files
  before pressing the upload button.  You can also use
  drap & drop if your browser supports it.

 * [JSPWIKI-903](https://issues.apache.org/jira/browse/JSPWIKI-903) Fixed a page redirect issue when deleting an
  attachment from the Attachment info page.

* Fixed the zebra-stripes of the FIND `AJAXSearch.jsp`

* Few small improvements on the plain editor suggestion dialogs.


**2015-08-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-35_

* [JSPWIKI-912](https://issues.apache.org/jira/browse/JSPWIKI-912) Haddock Template: fixing the position of headers
  below the fixed navigation bar, when returning from a section edit.


**2015-08-23  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-34_  WYSIWYG improvements

* Added the wysiwyg editor to the wro4j build process

* Improved the stability of the `WysiwygEditingRenderer`


**2015-08-22  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-33_  Fixed [JSPWIKI-910 support configuring jspwiki with envvars
   having dots replaced with underscores in the varnames

**2015-08-16  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-32_  Haddock Template updates & WYSIWYG editing

Haddock Template:

* [JSPWIKI-902](https://issues.apache.org/jira/browse/JSPWIKI-902) Printing improvements for the HADDOCK template,
  hiding sidebar, userbox, wrapping long page-names, and a few other tweaks.

* The Page Footer now sticks to the bottom of the screen, even for short pages

* Fixed an issue with the persistence of the status of collapsible lists

* Added fixes for IE compatibility for the bootstrap css framework.

* [JSPWIKI-892](https://issues.apache.org/jira/browse/JSPWIKI-892) Haddock editor should put the cursor at the top of the textarea,
  also when opening the editor with a certain section

* Improved the header layout (suggestion of Harry) moving the quick search field
  into the searchbox dropdown.

* [JSPWIKI-908](https://issues.apache.org/jira/browse/JSPWIKI-908) The basic editor toolbar icons (bold, italic, link, etc..)
  are back in the plain editor of HADDOCK.


WYSIWYG further enhancements

* (experimental) Included a plain vanilla wysiwyg editor to JSPWiki.
  This editor is based on mooEditable, MIT licensed.
  This editor is unfortunately not compatible with the default template.

  You can still add your own wysiwyg editor to JSPWiki -- hooks are provided
  for TinyMCE and CKeditor.

* Added ajax-based live-preview for wysiwyg editors to the Haddock Template.
  When editing in wysiwyg mode, you now get immediately a preview of the wiki markup.
  (similar to the live-preview mode of the plain editor)

* The wysiwyg editors are now resizable, just like the plain editor..


**2015-08-04  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-31_  Haddock Template small fixes

* Loading error on `haddock.js` and `haddock-edit.js` fixed. (async attribute)
  Was breaking all editing js functions !

* IEx tweaks
    * remove unnecessary scrollbars
    * attempt to resolve the broken icon-fonts on IE11

* `%%add-css` style fix to handle special html entities


**2015-08-04  David Vittor (dvittor AT apache DOT org)**

* _2.10.2-svn-30_

* [JSPWIKI-900](https://issues.apache.org/jira/browse/JSPWIKI-900): Fixed Problem with the `WikiFormsPlugin` Text Area

**2015-08-02  Dirk Frederickx (brushed AT apache DOT org)**

* Fixed the unit tests for `HtmlStringToWikiTranslatorTest`

**2015-08-02  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-29_

Some more Haddock template "tweaks":

* Hide the attach & info navigation menu's for non-existing page

* Improved the Info dropdown when no Author page exists.

* Section titles remain visible, even with a sticky navigation menu.
  Eg. when clicking a table of contents entry, you should end up
  with a visible section header just below the sticky menu line.

* Fixed: the top border of a TABLE was gone.

* Added a version check on the user-preference cookie to be more robust ico changes.
  (hopefully no more cookie clean-up is needed when upgrading JSPWiki)

* Sidebar:
    * The sidebar height now extends till the bottom of the page
    * 3 Sidebar modes are now working: left(default), right and hidden

* Fixed the `<wiki:Link>` tag to support `cssClass` as attribute.

* [JSPWIKI-430](https://issues.apache.org/jira/browse/JSPWIKI-430) All confirmation dialogs are now build with regular DOM elements.
  (check out the Log-out or Delete confirmation dialogs to see the improvement)


WYSIWYG editors:

* Added support for the WYSIWYG editor `TinyMCE.jsp`

* Improved server side handling of `HtmlStringToWiki` translation

* [JSPWIKI-622](https://issues.apache.org/jira/browse/JSPWIKI-622) Added an editor selection switch to the editor toolbar.
  It is now possible to switch between editors (plain, or other installed
  wysiwyg editors) while in Edit. (no need to go first via the Preferences screen)


**2015-07-26  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-28_

Haddock Template commit of the remaining JSP's: UI for handling groups,
workflow UI, and refactored JSP's for Login/Lostpw/Register.
This concludes the re-design of all the haddock template JSP's.

Other changes:

* Fixed page redirections and improved the back button handling.
  Eg. Attachment DELETE will get you now back to the ATTACH view,
  not the INFO view.  See also [JSPWIKI-867](https://issues.apache.org/jira/browse/JSPWIKI-867)

* Tabs & Accordion toggles can now include other markup, rather than only text.

* Added CSS3-based automatic text hyphenation for browsers who support this.
  (also works with none justified text)

* Attachment Upload UI improved: attachment types are represented by icons
  from the icon-font.

* Attachment Info page to access version information on attachments
  should now be more user-friendly, with an extra INFO action button.
  (iso a hidden link via the version number)


**2015-07-16  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-27_

More Haddock Template tweaks:

* Removed annoying scroll-bars from the dropdown menu's which appeared in some browsers

* Improved rendering of inserted dropdown's like the MoreMenu and HomeMenu,
  to make them better fit with bootstrap dropdown menu's.

* Few fixes of the layout of the User Preferences menu, and some refactoring
  of the `UserPreferences.jsp` and the Login.jsp.

* Fixed an editor bug causing the Live Preview to slow down after some time.

WYSIWYG editor in JSPWiki

* Refreshed the WYSIWIG editor with the latest stable version of the
  CKeditor v4.5.1. (replacement of FCK) Standard version, with BootstrapCK4 skin.
  The update was done for both for the default and the Haddock template.
  FFS: server side translation from wiki-markup to HTML needs more work.
  (`WysiwygEditingRenderer.getString()` often crashes )


**2015-07-13  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.2-svn-26_

* [JSPWIKI-899](https://issues.apache.org/jira/browse/JSPWIKI-899): Russian set of wiki pages, contributed by Victor Fedorov, thanks!

**2015-07-12  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-25_

* [JSPWIKI-896](https://issues.apache.org/jira/browse/JSPWIKI-896) Haddock template – user preferences are not saved.
  `haddock-pref.js` was not properly included into the build, due to lowercase
  issue in `wro-haddock.xml`.

* [JSPWIKI-518](https://issues.apache.org/jira/browse/JSPWIKI-518) Saving after editing a section will return you to that section.
  Fixed missing commits on `wiki.js`. Should work now.

* Fixed issue with Accesskey

* [JSPWIKI-433](https://issues.apache.org/jira/browse/JSPWIKI-433) Allow back button for `TAB` keys.
  It is now also possible to click a link to a hidden pane of a tabbed section
  (eg from the Table Of Contents) to automatically open that TAB pane.

* Added a `title` attribute to the pagename in the header.  In case a very long
  pagename is truncated (with ellipsis ...) you can still see the full
  pagename when you hover the mouse over the pagename.


**2015-07-09  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.2-svn-24_

* Minor improvements:
    * Use of `StringBuilder` over `StringBuffer` whenever possible.
    * SLF4J upgraded to 1.7.12
    * JUnit upgraded to 4.12, Jetty upgraded to 8.1.15

**2015-07-05  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-23_

* [JSPWIKI-895](https://issues.apache.org/jira/browse/JSPWIKI-895) Haddock template links contain raw URL information when printed
  including a few tweaks on the print css

* [JSPWIKI-518](https://issues.apache.org/jira/browse/JSPWIKI-518) Saving after editing a section will return you to that  section

* Improved formatting of the Quick Navigation drop-down to show the text and the
  search score on a single line.  (Firefox)


**2015-06-30  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-22_

* [JSPWIKI-894](https://issues.apache.org/jira/browse/JSPWIKI-894) Section editing using Haddock template appears broken.
  Fixed. Also fixed for the default template.


**2015-06-30  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-21_

HADDOCK Template fixes:

* [JSPWIKI-892](https://issues.apache.org/jira/browse/JSPWIKI-892)  Haddock editor when launched is always at bottom of window in Firefox

* Fixing latest update of Icon Styles


**2015-06-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-20_

* [JSPWIKI-891: Fixed annoying jumping behaviour in Firefox of the Haddock editor

* [JSPWIKI-885](https://issues.apache.org/jira/browse/JSPWIKI-885): LivePreview doesn't work
  The HADDOCK template has refresh mechanism based on "change events".
  (no periodic refreshes, like the default template)
  Improved trigger mechanism to catch all keystrokes; and at the same time
  reducing the debounce period (read - refresh time-out) to 1sec.


**2015-06-28  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-19_

More Haddock template fixes

* [JSPWIKI-890](https://issues.apache.org/jira/browse/JSPWIKI-890) (Haddock template) popups dissappear when trying to get
  your mouse to it. Removed the space between the menu and the dropdown.

* [JSPWIKI-887](https://issues.apache.org/jira/browse/JSPWIKI-887) Slimbox image style for embedded images fixed to show
  readable link description even in case of missing *title* or *alt* attributes.

* Updated JSPWikiFont, fixing display issues in FireFox.


**2015-06-27  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-18_

Small fixes and tweaks on haddock template
* Few improvements of the Reader template
* SLIMBOX support for interwiki links
* Small style tweaks
* Fix UserBox issue in non-default language


**2015-06-26  Siegfried Goeschl (sgoeschl@apache.org)**

* Fixed [JSPWIKI-888](https://issues.apache.org/jira/browse/JSPWIKI-888) Enable cache timeouts for Portable JSPWiki.

**2015-06-22  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.2-svn-17_

This is the third major check-in of the HADDOCK template, with mainly
stabilization fixes related for the plain editor, and many UI improvements.
The HADDOCK template is close to completion - go ahead and play with it.
(group related JSPs still to be done)

Summary of main changes:

* Many Suggestion dialogs are added to the plain editor:
  links, link-options, images, acls, plugins, variables, `%%styles`,
  hexadecimal colors, fonts, symbols, `%%icons`, ...
  You can create new suggestion dialogs via json snippets in `Wiki.Snips.js`

* Fixed [JSPWIKI-482](https://issues.apache.org/jira/browse/JSPWIKI-482) Wrong insert from the suggestion box

* The editor toolbar is simplified, as most functions are reachable via the
  suggestion dialogs. The find & replace UI can be repositioned on the screen.

* Sticky menu bar, which stays on top of the screen when scrolling down.

* The Quick Navigation menu is redesigned to improve usability for creating
  and cloning new pages.
  [JSPWIKI-531](https://issues.apache.org/jira/browse/JSPWIKI-531) usability: hints on or mechanism for creating a page

* New `%%styles` added:  `%%dropcaps`, `%%flip`, `%%flop`, `%%addcss`, `%%progress`,
  `%%scrollable-250` (limit the height of a code-block, so it becomes scrollable )

* Show READER view (also great for printing) has been added to the More menu.

* [JSPWIKI-788](https://issues.apache.org/jira/browse/JSPWIKI-788) `TabbedSection` - support multiple tabbedSections in single
  document with same tab-identifiers

* Updated to the latest mootools v1.5.1
* Updated to wro4j 1.7.8

* Some additional i18n properties added -- but translation still to be done.

**2015-05-31  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-16_

* Fixed [JSPWIKI-882](https://issues.apache.org/jira/browse/JSPWIKI-882) test-failure when using existing localized locale in `OutComeTest` (thanks to Marco Roeland)

**2015-04-18  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-15_

* Fixed [JSPWIKI-880](https://issues.apache.org/jira/browse/JSPWIKI-880) Glassfish 4 Wrong Chars Solution - Brasil PT, thanks to Renato Grosz

**2015-03-06  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-14_

* Fixed [JSPWIKI-878](https://issues.apache.org/jira/browse/JSPWIKI-878) (following up [JSPWIKI-660](https://issues.apache.org/jira/browse/JSPWIKI-660)) you can now also use environment variables to configure JSPWiki

**2015-02-12  David Vittor (dvittor AT apache DOT org)**

* _2.10.2-svn-13_

* [Fixed [JSPWIKI-867](https://issues.apache.org/jira/browse/JSPWIKI-867) - Deleting attachments should retain focus on the Attach tab

* [JSPWIKI-566](https://issues.apache.org/jira/browse/JSPWIKI-566) - problem with `Cookie` set preferences and the `GSon.fromJson()` parser

* Fixed search icon in Smart Template `search.gif` instead of `search.png`

**2015-01-30  David Vittor (dvittor AT apache DOT org)**

* _2.10.2-svn-12_

* Fixed [JSPWIKI-566](https://issues.apache.org/jira/browse/JSPWIKI-566) - Complete rewrite of AJAX functionality for JSPWiki

* Fixed [JSPWIKI-502](https://issues.apache.org/jira/browse/JSPWIKI-502) & [JSPWIKI-760](https://issues.apache.org/jira/browse/JSPWIKI-760) - Show Wikipages in Search without Authorization

* Fixed [JSPWIKI-859](https://issues.apache.org/jira/browse/JSPWIKI-859) - Expose the `WikiModuleInfo` to the plugins and filters

* Fixed [JSPWIKI-866](https://issues.apache.org/jira/browse/JSPWIKI-866) - Additional parameters (`url`, `version`, `desc`, `htmltemplate`, `authorurl`) to `jspwiki_module.xml` `WikiModuleInfo`

**2015-01-25  David Vittor (dvittor AT apache DOT org)**

* _2.10.2-svn-11_

* Fixed [JSPWIKI-876](https://issues.apache.org/jira/browse/JSPWIKI-876) - [NotePlugin](https://jspwiki-wiki.apache.org/Wiki.jsp?page=NotePlugin) does not work on wiki without context

* Fixed [JSPWIKI-869](https://issues.apache.org/jira/browse/JSPWIKI-869) - JSPWiki Maven project cannot be imported into Eclipse

* Updated [JSPWIKI-867](https://issues.apache.org/jira/browse/JSPWIKI-867) - Deleting attachments should retain focus on the Attach tab

* Updated [JSPWIKI-566](https://issues.apache.org/jira/browse/JSPWIKI-566) - Some Ajax functionality added - not complete re-write yet

**2014-12-08  Siegfried Goeschl (sgoeschl@apache.org)**

* Fixed [JSPWIKI-829](https://issues.apache.org/jira/browse/JSPWIKI-829) - [Portable] Integrate `jspwiki-portable` into the jspwiki maven build

**2014-11-04  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-10_

* Fixed [JSPWIKI-874](https://issues.apache.org/jira/browse/JSPWIKI-874) - `IllegalStateException` running JSPWiki in Oracle Glassfish Server

**2014-11-04  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-9_

* Fixed [JSPWIKI-871](https://issues.apache.org/jira/browse/JSPWIKI-871) - upgraded nekohtml (0.9.5 => 1.9.21) and xercesImpl (2.4 => 2.10.0)

**2014-11-04  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-8_

* Fixed [JSPWIKI-870](https://issues.apache.org/jira/browse/JSPWIKI-870) - JSPWiki does not start, if tomcat directory path contains a white space.

**2014-09-21  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-7_

* Fixed [JSPWIKI-856](https://issues.apache.org/jira/browse/JSPWIKI-856) - Enhance [FileSystemProvider](https://jspwiki-wiki.apache.org/Wiki.jsp?page=FileSystemProvider) to be able to save page attributes as properties, provided by David Vittor

**2014-08-12  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.2-svn-6_

* Fixed [JSPWIKI-855](https://issues.apache.org/jira/browse/JSPWIKI-855): `NullPointerException` in `FormInput.java:92`, patch provided by Jürgen Weber - thanks!

**2014-07-31  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-5_

* Fixed [JSPWIKI-195](https://issues.apache.org/jira/browse/JSPWIKI-195) - do not allow more than one account with the same email address.
   ==> a new key (`security.error.email.taken`) was added to `CoreResources.properties`

* minor encoding correction for the `CoreResources_nl.properties`

**2014-07-07  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.2-svn-4_

* Dependencies' upgrade: EhCache to 2.6.9, SLF4J to 1.7.7, Selenium to 2.42.0, Stripes to 1.5.7-classloaderfix
  and Jetty to 8.1.15

**2014-06-23  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.2-svn-3_

* Fixed [JSPWIKI-847](https://issues.apache.org/jira/browse/JSPWIKI-847) - Recent Changes Plugin breaks markup if generates an empty table, reported by Dave Koelmeyer

**2014-06-05  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.2-svn-2_

* Fixed [JSPWIKI-843](https://issues.apache.org/jira/browse/JSPWIKI-843) - generate test-jars

* Fixed [JSPWIKI-844](https://issues.apache.org/jira/browse/JSPWIKI-844) - Replace `org.apache.catalina` dependency by applying Ichiro's patch. Thanks!

* Fixed [JSPWIKI-311](https://issues.apache.org/jira/browse/JSPWIKI-311) - Cannot save user profile in container managed authentication mode

* Applied patch on [JSPWIKI-841](https://issues.apache.org/jira/browse/JSPWIKI-841), which solves part of the issue, on unsuccesful login there is no error message
  with container managed authentication

**2014-05-29  Harry Metske (metskem AT apache DOT org)**

* _2.10.2-svn-1_

* Fixed [JSPWIKI-396](https://issues.apache.org/jira/browse/JSPWIKI-396) - by making the server signature comparison case insensitive (reported by Jürgen Weber)

**2014-05-23  Harry Metske (metskem AT apache DOT org)**

* _2.10.1-svn-17_

* Fixed [JSPWIKI-535](https://issues.apache.org/jira/browse/JSPWIKI-535) - direct links to sections with accents doesn't work

**2014-04-20  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.1-svn-16_

* First steps integrating [Siegfried Goeschl's Wiki On A Stick](https://github.com/sgoeschl/apache-jspwiki)
  (thanks!), portable module still pending.
    * Fixes [JSPWIKI-826](https://issues.apache.org/jira/browse/JSPWIKI-826) - [Portable] PropertyReader ignores the web app class loader

* Lucene updated to 4.7.0

**2014-04-20  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.1-svn-15_

* Fixed [JSPWIKI-822](https://issues.apache.org/jira/browse/JSPWIKI-822) - NPE thrown by `PluginContext#getText()`

* [JSPWIKI-814 - [VersioningFileProvider](https://jspwiki-wiki.apache.org/Wiki.jsp?page=VersioningFileProvider) does migrate original page properties (thanks to Brian Burch)

**2014-04-20  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.1-svn-14_

* Fixed [JSPWIKI-832](https://issues.apache.org/jira/browse/JSPWIKI-832) - [Portable] Problems setting up multiple wikis using a shared JSPWiki libraries
  (patch by Siegfried Goeschl - thanks!)

* Upgraded selenium-*-drivers to 2.41.0

**2014-04-01  Harry Metske (metskem AT apache DOT org)**

* _2.10.1-svn-13_

* Fixed [JSPWIKI-831](https://issues.apache.org/jira/browse/JSPWIKI-831) - Container managed authorization does not work in tomcat

**2014-03-17  Harry Metske (metskem AT apache DOT org)**

* _2.10.1-svn-12_

* Fixed [JSPWIKI-833](https://issues.apache.org/jira/browse/JSPWIKI-833) - temp policy file is created with wrong content (thanks to Dietrich Schmidt)

**2014-03-11  Harry Metske (metskem AT apache DOT org)**

* Fixed [JSPWIKI-823](https://issues.apache.org/jira/browse/JSPWIKI-823) - set `java.io.tmpdir` to `${project.build.directory}` in `pom.xml`

**2014-03-11  Harry Metske (metskem AT apache DOT org)**

* Fixed [JSPWIKI-827](https://issues.apache.org/jira/browse/JSPWIKI-827) - Migrate the `mvn_cheatsheet.txt` to Markdown

**2014-03-03  Harry Metske (metskem AT apache DOT org)**

* _2.10.1-svn-11_

* Fixed [JSPWIKI-813](https://issues.apache.org/jira/browse/JSPWIKI-813) - `ReferenceManagerTest` - two cases fail (thanks to Brian Burch)

**2014-03-02  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.1-svn-10_

This is the second major check-in of the HADDOCK template, with
fixes and improvements mainly related to the plain editor.

* Live preview has been fixed, with ajax based on the fly page rendering.
  The live preview area can now also be displayed side-by-side next to the editor textarea,
  so you can immediately see the rendered wiki-markup during edit.

* Suggestion dialog boxes are shown while you type to assist entrance of more advanced
  wiki-markup such as links, `%%styles`, colors, fonts, plugins, and symbols.
  (but still heavily under development)

* Section Editing has been improved: you can choose which part of the page you want to edit.

* All icons are now based on an icon Font, replacing the FamFamFam icon set.
  Based on Font Awesome by Dave Gandy - http://fontawesome.io | http://fontawesome.io/icons/

* The find & replace UI has been enhanced, showing number of occurrences,
  supporting regular expressions, and supporting replacement for the first or all matches.

* Text is automatically indented based on the indentation level of the previous line.

* Using the `TAB` key inside the textarea will indent a line. Use `shift+TAB` to un-indent.
  Indentation also works when selecting multiple lines.

* You can use `shift+Enter` to quickly insert line-breaks. (\\)


Fixing following editor related JIRA tickets :

* [JSPWIKI-382](https://issues.apache.org/jira/browse/JSPWIKI-382)  Remove `posteditor.js`

* [JSPWIKI-482](https://issues.apache.org/jira/browse/JSPWIKI-482)  Wrong insert from the suggestion box

* [JSPWIKI-443](https://issues.apache.org/jira/browse/JSPWIKI-443)  Full screen editor.
  Added a collapsible sidebar, and a side-by-side display of the live-preview area.

* [JSPWIKI-336](https://issues.apache.org/jira/browse/JSPWIKI-336)  section selection box not working properly. Fixed.

* Fixed the User-Preference page-unload event.


Other changes :

* New "layout" user-preference to switch between fluid or fixed-width page layout.

* Added a info drop-down menu with a summary of the page-info.
  This is similar to page-footer section, but now accessible at the top of the page.

* Replacing all `*.png` based icons by an icon font.  (eg. slimbox, filter, rss-feed )


**2014-02-20  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.1-svn-9_

* JS fix in haddock template : RegExp expression cause FF to crash.


**2014-02-20  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.1-svn-8_

* [JSPWIKI-769 related](https://issues.apache.org/jira/browse/JSPWIKI-769) jspwiki-portable module, right now only Windows executable is generated, cfr. with
  https://jspwiki-wiki.apache.org/Wiki.jsp?page=PortableBinaries

* [JSPWIKI-817 related](https://issues.apache.org/jira/browse/JSPWIKI-817) `Install.jsp` is broken ==> Translation corrections (`install.jsp.intro.[p1|p2|p3]`) for ES

* [JSPWIKI-821](https://issues.apache.org/jira/browse/JSPWIKI-821) `TestEngine` sometimes creates testrepositories with double timestamps after r1567444

**2014-02-18  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.1-svn-7_

* Various small fixes on the HADDOCK template (jsp/css/js) :

* Fixing `%%category` dropdowns which were clipped when inside a `%%accordion`.
  Replacing js based animation by2.10.1-svn-12 css3 animation to show/hide the popup.

* Fixing bug when saving the Preferences (detected by Harry)

* Changed fixed-width layout into fluid layout, occupying all screen real-estate.
  (this could become a user-preference setting in the future)
  Slightly decreasing the size of the sidebar.

**2014-02-18  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.1-svn-6_

* Fixing the `JSONRPCManager.emitJSONCall(..)` so that it now renders
  the correct JSON RPC invocation javascript.

  You can test the `RPCSamplePlugin` like this:
```
[{RPCSamplePlugin

test
}]
```
  We are still getting error-code: `490, "No permission to access this AJAX method!"`
  when invoking a plugin generated json-rpc call.


**2014-02-14  Dirk Frederickx (brushed AT apache DOT org)**

* _2.10.1-svn-5_

  Introducing the HADDOCK template, a new template/ui for Apache JSPWiki.

  This template contains various UI improvements and JSP simplifications,
  a major redesign of the JSPWiki CSS stylesheet based on BOOTSTRAP
  (now modularly build with LESS) and a rework of the javascript routines
  based on mootools v1.4.x. (also the js is now split into modular class files)

  Be aware: this is a first commit -- expect things to be broken.
  More work is needed on the plain editor; the Group UI is to be fixed.
  Validation has been done against Safari, Chrome & FF;  IE testing is left
  to the adventurous user.

  HADDOCK lives peacefully next to the default template. To activate the new
  template, add following line to your `jspwiki-custom.properties`:
```
jspwiki.templateDir = haddock
```

* [JSPWIKI-504](https://issues.apache.org/jira/browse/JSPWIKI-504) New default look for 3.0

* [JSPWIKI-431](https://issues.apache.org/jira/browse/JSPWIKI-431) Attachment Upload, support upload of multiple files, drag&drop,
improved progress bars.
However the server functionality to upload multiple files is
currently broken. FFS

* [JSPWIKI-432](https://issues.apache.org/jira/browse/JSPWIKI-432) Simplify Tabbed Section Markup
Still maintaining backwards compatibility with the current %%tabbedSection
markup.

* [JSPWIKI-712](https://issues.apache.org/jira/browse/JSPWIKI-712) Entites in ChangeNote should be decoded with "keep editing"

* [JSPWIKI-797](https://issues.apache.org/jira/browse/JSPWIKI-797) Refactoring the JSPWiki javascript routines, upgrade js libs:
    * mootools-core-1.4.5
    * mootools-more-1.4.0.1
    * prettify (dd. 4 mar 2013)

* [JSPWIKI-798](https://issues.apache.org/jira/browse/JSPWIKI-798) Refactoring the JSPWiki main CSS stylesheet -
 now based on the BOOTSTRAP CSS Framework

* [JSPWIKI-430](https://issues.apache.org/jira/browse/JSPWIKI-430) DOM based popups to replace regular js alert or prompt dialog boxes
 Also the edit/clone UI has been refactored.
 Some delete confirmation dialog boxes are still to be converted.

* [JSPWIKI-429](https://issues.apache.org/jira/browse/JSPWIKI-429) Improved SLIMBOX to support Youtube, flash and other formats.
  You can now also 'slimbox' another wiki-page or an external url.
  Based on this media viewer, also a %%carousel style has been added.

* [JSPWIKI-478](https://issues.apache.org/jira/browse/JSPWIKI-478) Remember cookies of collapsible for all contexts
  Collapsible lists and boxes have been refactored, and styled with BOOTSTRAP.
  In general, all %%dynamic-styles are re-styled with BOOTSTRAP css components.

* [JSPWIKI-693](https://issues.apache.org/jira/browse/JSPWIKI-693) style issues

* [JSPWIKI-463](https://issues.apache.org/jira/browse/JSPWIKI-463) display error in default template

* [JSPWIKI-449](https://issues.apache.org/jira/browse/JSPWIKI-449) Menuhide functionality is illogical
  The sidebar (aka Favorites) can be shown/hidden via a toggle button.
  By default, the sidebar is hidden in the Edit/Comment view, to give
  maximum square-meters to the edit text-area.

* [JSPWIKI-512](https://issues.apache.org/jira/browse/JSPWIKI-512) CSS Error with Firefox 2.0.20

*  Upgrade wro4j to latest version 1.7.3

**2014-02-12  Juan Pablo Santos (juanpablo AT apache DOT org)**

* _2.10.1-svn-4_

* Fixed [JSPWIKI-819](https://issues.apache.org/jira/browse/JSPWIKI-819): Consider replacing ECS with JDOM, thanks to Ichiro Furusato

* `TestEngine( Properties )` uses a different directory as page repo (JSPWIKI-813 related)
