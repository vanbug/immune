
    

  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>codes/imm.R at master from vanbug's immune - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="http://github.com/fluidicon.png" title="GitHub" />

    <link href="http://assets2.github.com/stylesheets/bundle_common.css?103721b48fef7a748c6e037612b6e4421df725a5" media="screen" rel="stylesheet" type="text/css" />
<link href="http://assets2.github.com/stylesheets/bundle_github.css?103721b48fef7a748c6e037612b6e4421df725a5" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = 'vanbug'
      
    </script>
    <script src="http://assets0.github.com/javascripts/jquery/jquery-1.4.2.min.js?103721b48fef7a748c6e037612b6e4421df725a5" type="text/javascript"></script>
    <script src="http://assets0.github.com/javascripts/bundle_common.js?103721b48fef7a748c6e037612b6e4421df725a5" type="text/javascript"></script>
<script src="http://assets1.github.com/javascripts/bundle_github.js?103721b48fef7a748c6e037612b6e4421df725a5" type="text/javascript"></script>

        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "vanbug/immune"
      })
    </script>

    
  
    
  

  <link href="http://github.com/vanbug/immune/commits/master.atom" rel="alternate" title="Recent Commits to immune:master" type="application/atom+xml" />

        <meta name="description" content="Processing Escape Data" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "vanbug/immune";
      GitHub.currentRef = 'master';
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

  </head>

  

  <body class="logged_in ">
    

    
      <script type="text/javascript">
        var _kmq = _kmq || [];
        function _kms(u){
          var s = document.createElement('script'); var f = document.getElementsByTagName('script')[0]; s.type = 'text/javascript'; s.async = true;
          s.src = u; f.parentNode.insertBefore(s, f);
        }
        _kms('//i.kissmetrics.com/i.js');_kms('//doug1izaerwt3.cloudfront.net/406e8bf3a2b8846ead55afb3cfaf6664523e3a54.1.js');
      </script>
    

    

    

    

    <div class="subnavd" id="main">
      <div id="header" class="true">
        
          <a class="logo boring" href="https://github.com/">
            <img src="/images/modules/header/logov3.png?changed" class="default" alt="github" />
            <![if !IE]>
            <img src="/images/modules/header/logov3-hover.png" class="hover" alt="github" />
            <![endif]>
          </a>
        
        
          






  
    <div class="userbox">
      <div class="avatarname">
        <a href="http://github.com/vanbug"><img src="http://www.gravatar.com/avatar/b0dcb8a5aedccd62f101f30efb95d86c?s=140&d=http%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="20" height="20"  /></a>
        <a href="http://github.com/vanbug" class="name">vanbug</a>

        
        
      </div>
      <ul class="usernav">
        <li><a href="https://github.com/">Dashboard</a></li>
        <li>
          
          <a href="https://github.com/inbox">Inbox</a>
          <a href="https://github.com/inbox" class="unread_count ">0</a>
        </li>
        <li><a href="https://github.com/account">Account Settings</a></li>
                        <li><a href="/logout">Log Out</a></li>
      </ul>
    </div><!-- /.userbox -->
  


        
        <div class="topsearch">
  
    <form action="/search" id="top_search_form" method="get">
      <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search">Advanced Search</a>
      <input type="search" class="search my_repos_autocompleter" name="q" results="5" placeholder="Search&hellip;" /> <input type="submit" value="Search" class="button" />
      <input type="hidden" name="type" value="Everything" />
      <input type="hidden" name="repo" value="" />
      <input type="hidden" name="langOverride" value="" />
      <input type="hidden" name="start_value" value="1" />
    </form>
    <ul class="nav">
      <li><a href="/explore">Explore GitHub</a></li>
      <li><a href="http://gist.github.com">Gist</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="http://help.github.com">Help</a></li>
    </ul>
  
</div>

      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">

      

      <div class="title-actions-bar">
        <h1>
          <a href="/vanbug">vanbug</a> / <strong><a href="http://github.com/vanbug/immune">immune</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      

      
        <li class="for-owner" style="display:none"><a href="https://github.com/vanbug/immune/admin" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/vanbug/immune/toggle_watch" class="minibutton btn-watch " id="watch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '9ad74e0b65fbf9335525ec4fe2b4d7e84eb4cb7f'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/vanbug/immune/toggle_watch" class="minibutton btn-watch " id="unwatch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '9ad74e0b65fbf9335525ec4fe2b4d7e84eb4cb7f'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          
            <li class="for-notforked" style="display:none"><a href="/vanbug/immune/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '9ad74e0b65fbf9335525ec4fe2b4d7e84eb4cb7f'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
            <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          

          <li id='pull_request_item' class='nspr' style='display:none'><a href="/vanbug/immune/pull/new/master" class="minibutton btn-pull-request "><span><span class="icon"></span>Pull Request</span></a></li>
        
      
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/vanbug/immune/watchers" title="Watchers" class="tooltipped downwards">1</a></li>
          <li class="forks"><a href="/vanbug/immune/network" title="Forks" class="tooltipped downwards">1</a></li>
        </ul>
      </li>
    </ul>

      </div>

        
  <ul class="tabs">
    <li><a href="http://github.com/vanbug/immune/tree/master" class="selected" highlight="repo_source">Source</a></li>
    <li><a href="http://github.com/vanbug/immune/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/vanbug/immune/network" highlight="repo_network">Network</a></li>
    <li><a href="/vanbug/immune/pulls" highlight="repo_pulls">Pull Requests (0)</a></li>

    
      <li><a href="/vanbug/immune/forkqueue" highlight="repo_fork_queue">Fork Queue</a></li>
    

    
      
      <li><a href="/vanbug/immune/issues" highlight="issues">Issues (0)</a></li>
    

                    <li><a href="/vanbug/immune/wiki">Wiki (0)</a></li>
            
    <li><a href="/vanbug/immune/graphs" highlight="repo_graphs">Graphs</a></li>

    <li class="contextswitch nochoices">
      <span class="toggle leftwards" >
        <em>Branch:</em>
        <code>master</code>
      </span>
    </li>
  </ul>

  <div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
  <div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

  <div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown defunct">Switch Tags (0)</a>
      
    </li>
    <li>
    
    <a href="/vanbug/immune/branches" class="manage">Branch List</a>
    
    </li>
  </ul>
</div>

  
  
  
  
  
  



        
    <div id="repo_details" class="metabox clearfix">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

        <a href="/vanbug/immune/downloads" class="download-source" id="download_button" title="Download source, tagged packages and binaries."><span class="icon"></span>Downloads</a>

      <div id="repository_desc_wrapper">
      <div id="repository_description" rel="repository_description_edit">
        
          <p>Processing Escape Data
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>
      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/vanbug/immune/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="9ad74e0b65fbf9335525ec4fe2b4d7e84eb4cb7f" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="Processing Escape Data">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://" rel="nofollow"></a></p>
      </div>
      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/vanbug/immune/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="9ad74e0b65fbf9335525ec4fe2b4d7e84eb4cb7f" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>
      </div>
      <div class="rule "></div>
            <div id="url_box" class="url-box">
        <ul class="clone-urls">
          
            
              <li id="private_clone_url"><a href="git@github.com:vanbug/immune.git" data-permissions="Read+Write">SSH</a></li>
            
            <li id="http_clone_url"><a href="https://vanbug@github.com/vanbug/immune.git" data-permissions="Read+Write">HTTP</a></li>
            <li id="public_clone_url"><a href="git://github.com/vanbug/immune.git" data-permissions="Read-Only">Git Read-Only</a></li>
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="http://assets0.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="http://assets0.github.com/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


        

      </div><!-- /.pagehead -->

      









<script type="text/javascript">
  GitHub.currentCommitRef = 'master'
  GitHub.currentRepoOwner = 'vanbug'
  GitHub.currentRepo = "immune"
  GitHub.downloadRepo = '/vanbug/immune/archives/master'
  GitHub.revType = "master"

  GitHub.controllerName = "blob"
  GitHub.actionName     = "show"
  GitHub.currentAction  = "blob#show"

  
    GitHub.hasWriteAccess = true
    GitHub.hasAdminAccess = true
    GitHub.watchingRepo = true
    GitHub.ignoredRepo = false
    GitHub.hasForkOfRepo = null
    GitHub.hasForked = true
  

  
</script>








  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/vanbug/immune/commit/6317667cda2c05def464fe131fb0eb0115bcb8b7">Descriptive Tissue and Animal Stats(Animal-Tissue&amp;Tissue-Animal)</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img src="http://www.gravatar.com/avatar/b0dcb8a5aedccd62f101f30efb95d86c?s=140&d=http%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="30" height="30"  />
        </div>
        <div class="name"><a href="/vanbug">vanbug</a> <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2010-10-28 13:26:32">Thu Oct 28 13:26:32 -0700 2010</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/vanbug/immune/commit/6317667cda2c05def464fe131fb0eb0115bcb8b7" hotkey="c">6317667cda2c05def464</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/vanbug/immune/tree/6317667cda2c05def464fe131fb0eb0115bcb8b7" hotkey="t">74eea83b29cd002deabb</a><br />
      
        <span>p</span>arent&nbsp;
        
        <a href="/vanbug/immune/tree/ac6342c8269b94b49ed9254711055acf8b09ef03" hotkey="p">ac6342c8269b94b49ed9</a>
      

    </div>
  </div>

    </div>
  </div>



  
    <div id="path">
      <b><a href="/vanbug/immune/tree/master">immune</a></b> / <a href="/vanbug/immune/tree/master/codes">codes</a> / imm.R       <span style="display:none" id="clippy_303">codes/imm.R</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="http://assets0.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_303&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="http://assets0.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_303&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div id="files">
      <div class="file">
        <div class="meta">
          <div class="info">
            <span class="icon"><img alt="Txt" height="16" src="http://assets1.github.com/images/icons/txt.png?103721b48fef7a748c6e037612b6e4421df725a5" width="16" /></span>
            <span class="mode" title="File Mode">100644</span>
            
              <span>288 lines (267 sloc)</span>
            
            <span>11.892 kb</span>
          </div>
          <ul class="actions">
            
              <li><a id="file-edit-link" href="#" rel="/vanbug/immune/file-edit/__ref__/codes/imm.R">edit</a></li>
            
            <li><a href="/vanbug/immune/raw/master/codes/imm.R" id="raw-url">raw</a></li>
            
              <li><a href="/vanbug/immune/blame/master/codes/imm.R">blame</a></li>
            
            <li><a href="/vanbug/immune/commits/master/codes/imm.R">history</a></li>
          </ul>
        </div>
        
  <div class="data type-r">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <pre class="line_numbers"><span id="LID1" rel="#L1">1</span>
<span id="LID2" rel="#L2">2</span>
<span id="LID3" rel="#L3">3</span>
<span id="LID4" rel="#L4">4</span>
<span id="LID5" rel="#L5">5</span>
<span id="LID6" rel="#L6">6</span>
<span id="LID7" rel="#L7">7</span>
<span id="LID8" rel="#L8">8</span>
<span id="LID9" rel="#L9">9</span>
<span id="LID10" rel="#L10">10</span>
<span id="LID11" rel="#L11">11</span>
<span id="LID12" rel="#L12">12</span>
<span id="LID13" rel="#L13">13</span>
<span id="LID14" rel="#L14">14</span>
<span id="LID15" rel="#L15">15</span>
<span id="LID16" rel="#L16">16</span>
<span id="LID17" rel="#L17">17</span>
<span id="LID18" rel="#L18">18</span>
<span id="LID19" rel="#L19">19</span>
<span id="LID20" rel="#L20">20</span>
<span id="LID21" rel="#L21">21</span>
<span id="LID22" rel="#L22">22</span>
<span id="LID23" rel="#L23">23</span>
<span id="LID24" rel="#L24">24</span>
<span id="LID25" rel="#L25">25</span>
<span id="LID26" rel="#L26">26</span>
<span id="LID27" rel="#L27">27</span>
<span id="LID28" rel="#L28">28</span>
<span id="LID29" rel="#L29">29</span>
<span id="LID30" rel="#L30">30</span>
<span id="LID31" rel="#L31">31</span>
<span id="LID32" rel="#L32">32</span>
<span id="LID33" rel="#L33">33</span>
<span id="LID34" rel="#L34">34</span>
<span id="LID35" rel="#L35">35</span>
<span id="LID36" rel="#L36">36</span>
<span id="LID37" rel="#L37">37</span>
<span id="LID38" rel="#L38">38</span>
<span id="LID39" rel="#L39">39</span>
<span id="LID40" rel="#L40">40</span>
<span id="LID41" rel="#L41">41</span>
<span id="LID42" rel="#L42">42</span>
<span id="LID43" rel="#L43">43</span>
<span id="LID44" rel="#L44">44</span>
<span id="LID45" rel="#L45">45</span>
<span id="LID46" rel="#L46">46</span>
<span id="LID47" rel="#L47">47</span>
<span id="LID48" rel="#L48">48</span>
<span id="LID49" rel="#L49">49</span>
<span id="LID50" rel="#L50">50</span>
<span id="LID51" rel="#L51">51</span>
<span id="LID52" rel="#L52">52</span>
<span id="LID53" rel="#L53">53</span>
<span id="LID54" rel="#L54">54</span>
<span id="LID55" rel="#L55">55</span>
<span id="LID56" rel="#L56">56</span>
<span id="LID57" rel="#L57">57</span>
<span id="LID58" rel="#L58">58</span>
<span id="LID59" rel="#L59">59</span>
<span id="LID60" rel="#L60">60</span>
<span id="LID61" rel="#L61">61</span>
<span id="LID62" rel="#L62">62</span>
<span id="LID63" rel="#L63">63</span>
<span id="LID64" rel="#L64">64</span>
<span id="LID65" rel="#L65">65</span>
<span id="LID66" rel="#L66">66</span>
<span id="LID67" rel="#L67">67</span>
<span id="LID68" rel="#L68">68</span>
<span id="LID69" rel="#L69">69</span>
<span id="LID70" rel="#L70">70</span>
<span id="LID71" rel="#L71">71</span>
<span id="LID72" rel="#L72">72</span>
<span id="LID73" rel="#L73">73</span>
<span id="LID74" rel="#L74">74</span>
<span id="LID75" rel="#L75">75</span>
<span id="LID76" rel="#L76">76</span>
<span id="LID77" rel="#L77">77</span>
<span id="LID78" rel="#L78">78</span>
<span id="LID79" rel="#L79">79</span>
<span id="LID80" rel="#L80">80</span>
<span id="LID81" rel="#L81">81</span>
<span id="LID82" rel="#L82">82</span>
<span id="LID83" rel="#L83">83</span>
<span id="LID84" rel="#L84">84</span>
<span id="LID85" rel="#L85">85</span>
<span id="LID86" rel="#L86">86</span>
<span id="LID87" rel="#L87">87</span>
<span id="LID88" rel="#L88">88</span>
<span id="LID89" rel="#L89">89</span>
<span id="LID90" rel="#L90">90</span>
<span id="LID91" rel="#L91">91</span>
<span id="LID92" rel="#L92">92</span>
<span id="LID93" rel="#L93">93</span>
<span id="LID94" rel="#L94">94</span>
<span id="LID95" rel="#L95">95</span>
<span id="LID96" rel="#L96">96</span>
<span id="LID97" rel="#L97">97</span>
<span id="LID98" rel="#L98">98</span>
<span id="LID99" rel="#L99">99</span>
<span id="LID100" rel="#L100">100</span>
<span id="LID101" rel="#L101">101</span>
<span id="LID102" rel="#L102">102</span>
<span id="LID103" rel="#L103">103</span>
<span id="LID104" rel="#L104">104</span>
<span id="LID105" rel="#L105">105</span>
<span id="LID106" rel="#L106">106</span>
<span id="LID107" rel="#L107">107</span>
<span id="LID108" rel="#L108">108</span>
<span id="LID109" rel="#L109">109</span>
<span id="LID110" rel="#L110">110</span>
<span id="LID111" rel="#L111">111</span>
<span id="LID112" rel="#L112">112</span>
<span id="LID113" rel="#L113">113</span>
<span id="LID114" rel="#L114">114</span>
<span id="LID115" rel="#L115">115</span>
<span id="LID116" rel="#L116">116</span>
<span id="LID117" rel="#L117">117</span>
<span id="LID118" rel="#L118">118</span>
<span id="LID119" rel="#L119">119</span>
<span id="LID120" rel="#L120">120</span>
<span id="LID121" rel="#L121">121</span>
<span id="LID122" rel="#L122">122</span>
<span id="LID123" rel="#L123">123</span>
<span id="LID124" rel="#L124">124</span>
<span id="LID125" rel="#L125">125</span>
<span id="LID126" rel="#L126">126</span>
<span id="LID127" rel="#L127">127</span>
<span id="LID128" rel="#L128">128</span>
<span id="LID129" rel="#L129">129</span>
<span id="LID130" rel="#L130">130</span>
<span id="LID131" rel="#L131">131</span>
<span id="LID132" rel="#L132">132</span>
<span id="LID133" rel="#L133">133</span>
<span id="LID134" rel="#L134">134</span>
<span id="LID135" rel="#L135">135</span>
<span id="LID136" rel="#L136">136</span>
<span id="LID137" rel="#L137">137</span>
<span id="LID138" rel="#L138">138</span>
<span id="LID139" rel="#L139">139</span>
<span id="LID140" rel="#L140">140</span>
<span id="LID141" rel="#L141">141</span>
<span id="LID142" rel="#L142">142</span>
<span id="LID143" rel="#L143">143</span>
<span id="LID144" rel="#L144">144</span>
<span id="LID145" rel="#L145">145</span>
<span id="LID146" rel="#L146">146</span>
<span id="LID147" rel="#L147">147</span>
<span id="LID148" rel="#L148">148</span>
<span id="LID149" rel="#L149">149</span>
<span id="LID150" rel="#L150">150</span>
<span id="LID151" rel="#L151">151</span>
<span id="LID152" rel="#L152">152</span>
<span id="LID153" rel="#L153">153</span>
<span id="LID154" rel="#L154">154</span>
<span id="LID155" rel="#L155">155</span>
<span id="LID156" rel="#L156">156</span>
<span id="LID157" rel="#L157">157</span>
<span id="LID158" rel="#L158">158</span>
<span id="LID159" rel="#L159">159</span>
<span id="LID160" rel="#L160">160</span>
<span id="LID161" rel="#L161">161</span>
<span id="LID162" rel="#L162">162</span>
<span id="LID163" rel="#L163">163</span>
<span id="LID164" rel="#L164">164</span>
<span id="LID165" rel="#L165">165</span>
<span id="LID166" rel="#L166">166</span>
<span id="LID167" rel="#L167">167</span>
<span id="LID168" rel="#L168">168</span>
<span id="LID169" rel="#L169">169</span>
<span id="LID170" rel="#L170">170</span>
<span id="LID171" rel="#L171">171</span>
<span id="LID172" rel="#L172">172</span>
<span id="LID173" rel="#L173">173</span>
<span id="LID174" rel="#L174">174</span>
<span id="LID175" rel="#L175">175</span>
<span id="LID176" rel="#L176">176</span>
<span id="LID177" rel="#L177">177</span>
<span id="LID178" rel="#L178">178</span>
<span id="LID179" rel="#L179">179</span>
<span id="LID180" rel="#L180">180</span>
<span id="LID181" rel="#L181">181</span>
<span id="LID182" rel="#L182">182</span>
<span id="LID183" rel="#L183">183</span>
<span id="LID184" rel="#L184">184</span>
<span id="LID185" rel="#L185">185</span>
<span id="LID186" rel="#L186">186</span>
<span id="LID187" rel="#L187">187</span>
<span id="LID188" rel="#L188">188</span>
<span id="LID189" rel="#L189">189</span>
<span id="LID190" rel="#L190">190</span>
<span id="LID191" rel="#L191">191</span>
<span id="LID192" rel="#L192">192</span>
<span id="LID193" rel="#L193">193</span>
<span id="LID194" rel="#L194">194</span>
<span id="LID195" rel="#L195">195</span>
<span id="LID196" rel="#L196">196</span>
<span id="LID197" rel="#L197">197</span>
<span id="LID198" rel="#L198">198</span>
<span id="LID199" rel="#L199">199</span>
<span id="LID200" rel="#L200">200</span>
<span id="LID201" rel="#L201">201</span>
<span id="LID202" rel="#L202">202</span>
<span id="LID203" rel="#L203">203</span>
<span id="LID204" rel="#L204">204</span>
<span id="LID205" rel="#L205">205</span>
<span id="LID206" rel="#L206">206</span>
<span id="LID207" rel="#L207">207</span>
<span id="LID208" rel="#L208">208</span>
<span id="LID209" rel="#L209">209</span>
<span id="LID210" rel="#L210">210</span>
<span id="LID211" rel="#L211">211</span>
<span id="LID212" rel="#L212">212</span>
<span id="LID213" rel="#L213">213</span>
<span id="LID214" rel="#L214">214</span>
<span id="LID215" rel="#L215">215</span>
<span id="LID216" rel="#L216">216</span>
<span id="LID217" rel="#L217">217</span>
<span id="LID218" rel="#L218">218</span>
<span id="LID219" rel="#L219">219</span>
<span id="LID220" rel="#L220">220</span>
<span id="LID221" rel="#L221">221</span>
<span id="LID222" rel="#L222">222</span>
<span id="LID223" rel="#L223">223</span>
<span id="LID224" rel="#L224">224</span>
<span id="LID225" rel="#L225">225</span>
<span id="LID226" rel="#L226">226</span>
<span id="LID227" rel="#L227">227</span>
<span id="LID228" rel="#L228">228</span>
<span id="LID229" rel="#L229">229</span>
<span id="LID230" rel="#L230">230</span>
<span id="LID231" rel="#L231">231</span>
<span id="LID232" rel="#L232">232</span>
<span id="LID233" rel="#L233">233</span>
<span id="LID234" rel="#L234">234</span>
<span id="LID235" rel="#L235">235</span>
<span id="LID236" rel="#L236">236</span>
<span id="LID237" rel="#L237">237</span>
<span id="LID238" rel="#L238">238</span>
<span id="LID239" rel="#L239">239</span>
<span id="LID240" rel="#L240">240</span>
<span id="LID241" rel="#L241">241</span>
<span id="LID242" rel="#L242">242</span>
<span id="LID243" rel="#L243">243</span>
<span id="LID244" rel="#L244">244</span>
<span id="LID245" rel="#L245">245</span>
<span id="LID246" rel="#L246">246</span>
<span id="LID247" rel="#L247">247</span>
<span id="LID248" rel="#L248">248</span>
<span id="LID249" rel="#L249">249</span>
<span id="LID250" rel="#L250">250</span>
<span id="LID251" rel="#L251">251</span>
<span id="LID252" rel="#L252">252</span>
<span id="LID253" rel="#L253">253</span>
<span id="LID254" rel="#L254">254</span>
<span id="LID255" rel="#L255">255</span>
<span id="LID256" rel="#L256">256</span>
<span id="LID257" rel="#L257">257</span>
<span id="LID258" rel="#L258">258</span>
<span id="LID259" rel="#L259">259</span>
<span id="LID260" rel="#L260">260</span>
<span id="LID261" rel="#L261">261</span>
<span id="LID262" rel="#L262">262</span>
<span id="LID263" rel="#L263">263</span>
<span id="LID264" rel="#L264">264</span>
<span id="LID265" rel="#L265">265</span>
<span id="LID266" rel="#L266">266</span>
<span id="LID267" rel="#L267">267</span>
<span id="LID268" rel="#L268">268</span>
<span id="LID269" rel="#L269">269</span>
<span id="LID270" rel="#L270">270</span>
<span id="LID271" rel="#L271">271</span>
<span id="LID272" rel="#L272">272</span>
<span id="LID273" rel="#L273">273</span>
<span id="LID274" rel="#L274">274</span>
<span id="LID275" rel="#L275">275</span>
<span id="LID276" rel="#L276">276</span>
<span id="LID277" rel="#L277">277</span>
<span id="LID278" rel="#L278">278</span>
<span id="LID279" rel="#L279">279</span>
<span id="LID280" rel="#L280">280</span>
<span id="LID281" rel="#L281">281</span>
<span id="LID282" rel="#L282">282</span>
<span id="LID283" rel="#L283">283</span>
<span id="LID284" rel="#L284">284</span>
<span id="LID285" rel="#L285">285</span>
<span id="LID286" rel="#L286">286</span>
<span id="LID287" rel="#L287">287</span>
<span id="LID288" rel="#L288">288</span>
</pre>
          </td>
          <td width="100%">
            
              
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c1"># Immune Stats : An R package for the analysis of tissue and day specific virus escape and wild type epitope data.</span></div><div class='line' id='LC2'><span class="c1"># Author : Sukhdeep Singh</span></div><div class='line' id='LC3'><span class="c1"># Department : Division of Immunology, Department of Medicine</span></div><div class='line' id='LC4'><span class="c1"># Organization : Imperial College London</span></div><div class='line' id='LC5'><span class="c1"># Email : sukhdeepsingh.bio@gmail.com</span></div><div class='line' id='LC6'><span class="c1">####################################################################################################################</span></div><div class='line' id='LC7'><span class="c1">####################################################################################################################</span></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><span class="c1"># reads raw data files in</span></div><div class='line' id='LC10'>readFile<span class="o">&lt;-</span><span class="kr">function</span><span class="p">(</span>filename<span class="p">,</span>sep<span class="o">=</span><span class="kc">NULL</span><span class="p">,</span>header<span class="o">=</span><span class="kc">TRUE</span><span class="p">){</span></div><div class='line' id='LC11'>filename<span class="o">=</span>gsub<span class="p">(</span><span class="s">&#39;\&#39;&#39;,&#39;&#39;,filename)</span></div><div class='line' id='LC12'><span class="s">file=read.delim(filename,sep="\t",header=header)</span></div><div class='line' id='LC13'><span class="s">num=print(paste("Total sequences detected:",length(file[,1])))</span></div><div class='line' id='LC14'><span class="s">print("Its advisable to run abide function by inputting the sequence,tissue and experiment day column number, so that the data in in compliance with this package.")</span></div><div class='line' id='LC15'><span class="s">print(colnames(file))</span></div><div class='line' id='LC16'><span class="s">return(file)</span></div><div class='line' id='LC17'><span class="s">}</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="s">###############################################################################</span></div><div class='line' id='LC20'><span class="s"># function which makes the data compliant with the package</span></div><div class='line' id='LC21'><span class="s">abide&lt;-function(a,aSeq=NULL,aDay=NULL,aTissue=NULL){</span></div><div class='line' id='LC22'><span class="s">colnames(a)[aSeq]="Seq"</span></div><div class='line' id='LC23'><span class="s">colnames(a)[aDay]="Day"</span></div><div class='line' id='LC24'><span class="s">colnames(a)[aTissue]="Tissue"</span></div><div class='line' id='LC25'><span class="s">print ("Data complaince accomplished")</span></div><div class='line' id='LC26'><span class="s">return(a)</span></div><div class='line' id='LC27'><span class="s">}</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'><span class="s">###############################################################################</span></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><span class="s"># filters gag epitope sequences above threshold (&gt;247 NT)</span></div><div class='line' id='LC32'><span class="s">thresh&lt;-function(x,y){</span></div><div class='line' id='LC33'><span class="s">junk=which(x$Length&lt;y)</span></div><div class='line' id='LC34'><span class="s">x_thresh=x[-junk,1:length(x)]</span></div><div class='line' id='LC35'><span class="s">if(length(junk)==0) (x_thresh=x)</span></div><div class='line' id='LC36'><span class="s">print(paste("No. of Sequences removed :",length(junk)))</span></div><div class='line' id='LC37'><span class="s">return(x_thresh)</span></div><div class='line' id='LC38'><span class="s">}</span></div><div class='line' id='LC39'><br/></div><div class='line' id='LC40'><span class="s">###############################################################################</span></div><div class='line' id='LC41'><br/></div><div class='line' id='LC42'><span class="s"># filters out wild type from escape mutant sequences for the epitope sequence provided</span></div><div class='line' id='LC43'><span class="s">seqFilter&lt;-function(pool,epi){</span></div><div class='line' id='LC44'><span class="s">poolSeq=pool$Seq</span></div><div class='line' id='LC45'><span class="s">pattern=grep(epi,poolSeq,value=FALSE,ignore.case=TRUE)</span></div><div class='line' id='LC46'><span class="s">WT_seq=pool[pattern,1:length(pool)]</span></div><div class='line' id='LC47'><span class="s">EM_seq=pool[-pattern,1:length(pool)]</span></div><div class='line' id='LC48'><span class="s">percentage_WT=round(((length(pattern)/length(poolSeq))*100),digits=3)</span></div><div class='line' id='LC49'><span class="s">percentage_EM=(100-percentage_WT)</span></div><div class='line' id='LC50'><span class="s">print (paste("Total Sequences:",length(poolSeq)))</span></div><div class='line' id='LC51'><span class="s">print (paste("WT: ",percentage_WT,"%[",length(pattern),"]",sep=""))</span></div><div class='line' id='LC52'><span class="s">print (paste("EM: ",percentage_EM,"%[",(length(poolSeq)-length(pattern)),"]",sep=""))</span></div><div class='line' id='LC53'><span class="s">stats=c(paste("WT:",length(pattern)),paste("EM:",(length(poolSeq)-length(pattern))),paste("raw:",length(poolSeq)))</span></div><div class='line' id='LC54'><span class="s">return(list(WT=WT_seq,EM=EM_seq,stats=stats,raw=pool))</span></div><div class='line' id='LC55'><span class="s">}</span></div><div class='line' id='LC56'><br/></div><div class='line' id='LC57'><span class="s">###############################################################################</span></div><div class='line' id='LC58'><br/></div><div class='line' id='LC59'><span class="s"># tissue sequence filter : filters given specific tissue sequences out from the pool</span></div><div class='line' id='LC60'><span class="s">tissueFilter&lt;-function(pool,tissueName){</span></div><div class='line' id='LC61'><span class="s">poolTissue=pool$Tissue</span></div><div class='line' id='LC62'><span class="s">pattern=which(poolTissue==tissueName)</span></div><div class='line' id='LC63'><span class="s">tissue=pool[pattern,1:length(pool)]</span></div><div class='line' id='LC64'><span class="s">percentage=round(((length(pattern)/length(poolTissue))*100),digits=3)</span></div><div class='line' id='LC65'><span class="s">print (paste("Total",tissueName,"sequences are :",length(pattern)))</span></div><div class='line' id='LC66'><span class="s">print (paste(tissueName,"Percentage in total pool:",percentage))</span></div><div class='line' id='LC67'><span class="s">return(list(tissue=tissue,stats=length(pattern)))</span></div><div class='line' id='LC68'><span class="s">}</span></div><div class='line' id='LC69'><br/></div><div class='line' id='LC70'><span class="s">###############################################################################</span></div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'><span class="s"># day filter : filters given specific day sequences out from the pool</span></div><div class='line' id='LC73'><span class="s">dayFilter&lt;-function(pool,day){</span></div><div class='line' id='LC74'><span class="s">poolDay=pool$Day</span></div><div class='line' id='LC75'><span class="s">pattern=which(poolDay==day)</span></div><div class='line' id='LC76'><span class="s">dayData=pool[pattern,1:length(pool)]</span></div><div class='line' id='LC77'><span class="s">percentage=round(((length(pattern)/length(poolDay))*100),digits=3)</span></div><div class='line' id='LC78'><span class="s">print (paste("Total sequences for day",day,"are :",length(pattern)))</span></div><div class='line' id='LC79'><span class="s">print (paste("Day",day,"Percentage in given pool:",percentage))</span></div><div class='line' id='LC80'><span class="s">return(dayData)</span></div><div class='line' id='LC81'><span class="s">}</span></div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'><span class="s">###############################################################################</span></div><div class='line' id='LC84'><br/></div><div class='line' id='LC85'><span class="s"># deduces the experiment days</span></div><div class='line' id='LC86'><span class="s">dayCheck=function(pool){</span></div><div class='line' id='LC87'><span class="s">dayFetched=c()</span></div><div class='line' id='LC88'><span class="s">for (i in 1:500){if (length(which(pool$Day==i))&gt;0) {dayFetched=c(dayFetched,i)}}</span></div><div class='line' id='LC89'><span class="s">return (dayFetched)</span></div><div class='line' id='LC90'><span class="s">}</span></div><div class='line' id='LC91'><span class="s">###############################################################################</span></div><div class='line' id='LC92'><span class="s"># tissue detector</span></div><div class='line' id='LC93'><span class="s">tissueCheck=function(pool){</span></div><div class='line' id='LC94'><span class="s">tissues=levels(pool$Tissue)</span></div><div class='line' id='LC95'><span class="s">return(tissues)</span></div><div class='line' id='LC96'><span class="s">}</span></div><div class='line' id='LC97'><span class="s">###############################################################################</span></div><div class='line' id='LC98'><span class="s"># animal detector</span></div><div class='line' id='LC99'><span class="s">animalCheck=function(pool){</span></div><div class='line' id='LC100'><span class="s">animals=levels(pool$Animal)</span></div><div class='line' id='LC101'><span class="s">return(animals)</span></div><div class='line' id='LC102'><span class="s">}</span></div><div class='line' id='LC103'><span class="s">###############################################################################</span></div><div class='line' id='LC104'><span class="s"># calculates tissue ammounts in data for WT and EM at respective experiment days</span></div><div class='line' id='LC105'><span class="s">Stats=function(pool,tissue=NULL,days=NULL,animal=NULL,tissueAnimal=FALSE,animalTissue=FALSE){</span></div><div class='line' id='LC106'><span class="s">	# variable declarations</span></div><div class='line' id='LC107'><span class="s">	poolDay&lt;-c();dayPool&lt;-list();check&lt;-c();dayColumn&lt;-c();tissColumn&lt;-c();checkTiss&lt;-c();tissuePool_pattern&lt;-list();tissueDayPool&lt;-list();TissueDayPool&lt;-list()</span></div><div class='line' id='LC108'><span class="s">	aniTissue&lt;-list();dayTissue&lt;-list()</span></div><div class='line' id='LC109'><span class="s">	</span></div><div class='line' id='LC110'><span class="s">	# tissue fetcher</span></div><div class='line' id='LC111'><span class="s">	poolDay=pool$Day</span></div><div class='line' id='LC112'><span class="s">	if(is.null(tissue)){tissue=tissueCheck(pool)}</span></div><div class='line' id='LC113'><span class="s">	# day fetcher</span></div><div class='line' id='LC114'><span class="s">	if(is.null(days)){for (i in 1:250){if (length(which(poolDay==i))&gt;0) {days=c(days,i)}}}</span></div><div class='line' id='LC115'><span class="s">	# animal fetcher</span></div><div class='line' id='LC116'><span class="s">	if(is.null(animal)){animal=animalCheck(pool)}</span></div><div class='line' id='LC117'><span class="s">	</span></div><div class='line' id='LC118'><span class="s">	# day data for all animals and pools</span></div><div class='line' id='LC119'><span class="s">	dayPool=dayStats(days,pool)</span></div><div class='line' id='LC120'><span class="s">	# day column detector</span></div><div class='line' id='LC121'><span class="s">	for (j in 1:length(days)){	</span></div><div class='line' id='LC122'><span class="s">		for (i in 1:length(dayPool[[j]])){</span></div><div class='line' id='LC123'><span class="s">			check[i]=length(which(dayPool[[j]][[i]]==days[j]))</span></div><div class='line' id='LC124'><span class="s">			if (check[i]&gt;0) {dayColumn[j]=i}</span></div><div class='line' id='LC125'><span class="s">		}	</span></div><div class='line' id='LC126'><span class="s">	}</span></div><div class='line' id='LC127'><span class="s">	</span></div><div class='line' id='LC128'><span class="s">	# tissue to animal relation</span></div><div class='line' id='LC129'><span class="s">	if (tissueAnimal=="TRUE"){</span></div><div class='line' id='LC130'><span class="s">		# Tissues per day segmentar</span></div><div class='line' id='LC131'><span class="s">		dayTissue=tissueStats(tissue,days,dayPool)</span></div><div class='line' id='LC132'><span class="s">		for(a in 1:length(dayTissue)){</span></div><div class='line' id='LC133'><span class="s">			print(paste("Tissue investigated:",tissue[a]))</span></div><div class='line' id='LC134'><span class="s">			aniTissue[[a]]=aniStats(animal,days,dayTissue[[a]])</span></div><div class='line' id='LC135'><span class="s">		}</span></div><div class='line' id='LC136'><span class="s">	}</span></div><div class='line' id='LC137'><span class="s">	</span></div><div class='line' id='LC138'><span class="s">	# animal to tissue</span></div><div class='line' id='LC139'><span class="s">	if (animalTissue=="TRUE"){</span></div><div class='line' id='LC140'><span class="s">		aniTissue=aniStats(animal,days,dayPool)</span></div><div class='line' id='LC141'><span class="s">		for(b in 1:length(aniTissue)){</span></div><div class='line' id='LC142'><span class="s">		print(paste("Animal investigated:",animal[b]))</span></div><div class='line' id='LC143'><span class="s">		dayTissue=tissueStats(tissue,days,aniTissue[[b]])</span></div><div class='line' id='LC144'><span class="s">		}</span></div><div class='line' id='LC145'><span class="s">	}</span></div><div class='line' id='LC146'><span class="s">	</span></div><div class='line' id='LC147'><span class="s">	# returning segmented tissue-day specific data for all animals</span></div><div class='line' id='LC148'><span class="s">	return (list(dayTissue=dayTissue,aniTissue=aniTissue,results=results,statsTissue=StatsT,PercentageTissue=PercentageT))</span></div><div class='line' id='LC149'><span class="s">}</span></div><div class='line' id='LC150'><span class="s">###############################################################################</span></div><div class='line' id='LC151'><br/></div><div class='line' id='LC152'><span class="s"># tissue stats calculator</span></div><div class='line' id='LC153'><span class="s">tissueStats=function(tissue,days,dayPool){</span></div><div class='line' id='LC154'><span class="s"># variable declarations</span></div><div class='line' id='LC155'><span class="s">statsT&lt;-c();Tissue&lt;-c();percentageT&lt;-c();resultsT&lt;-c();StatsT&lt;-list();percentageT&lt;-list();PercentageT&lt;-list();patT&lt;-c();</span></div><div class='line' id='LC156'><span class="s">	print(paste("Stats for",length(tissue),"tissue"))</span></div><div class='line' id='LC157'><span class="s">	for (k in 1:length(tissue)){</span></div><div class='line' id='LC158'><span class="s">		for (j in 1:length(days)){</span></div><div class='line' id='LC159'><span class="s">			# tissue column detector</span></div><div class='line' id='LC160'><span class="s">			for (i in 1:length(dayPool[[j]])){</span></div><div class='line' id='LC161'><span class="s">				checkTiss[i]=length(which(dayPool[[j]][[i]]==tissue[k]))</span></div><div class='line' id='LC162'><span class="s">				if (checkTiss[i]&gt;=1) {tissColumn[j]=i}</span></div><div class='line' id='LC163'><span class="s">			}</span></div><div class='line' id='LC164'><span class="s">			# outputs empty Tissue day column, if empty</span></div><div class='line' id='LC165'><span class="s">			if (is.null(tissColumn[j])) {print(paste("No",tissue,"for Day",days[j]));statsT[j]=0}</span></div><div class='line' id='LC166'><span class="s">			# filters input tissue specific data for the specific dayPool and calculates statsT</span></div><div class='line' id='LC167'><span class="s">			else {		</span></div><div class='line' id='LC168'><span class="s">				tissuePool_pattern[[j]]=which(dayPool[[j]][[tissColumn[j]]]==tissue[k])</span></div><div class='line' id='LC169'><span class="s">				tissueDayPool[[j]]=dayPool[[j]][tissuePool_pattern[[j]],1:length(dayPool[[j]])]</span></div><div class='line' id='LC170'><span class="s">				statsT[j]=length(tissueDayPool[[j]][[i]])</span></div><div class='line' id='LC171'><span class="s">				percentageT[j]=round(((length(tissuePool_pattern[[j]])/length(dayPool[[j]][[tissColumn[j]]]==tissue[k]))*100),digits=2)</span></div><div class='line' id='LC172'><span class="s">				# replaces NA with 0</span></div><div class='line' id='LC173'><span class="s">				patT=which(sapply(percentageT,is.na),arr.ind=TRUE)</span></div><div class='line' id='LC174'><span class="s">				percentageT[patT]=0</span></div><div class='line' id='LC175'><span class="s">			}</span></div><div class='line' id='LC176'><span class="s">			#which(sapply(percentageT,is.na),arr.ind=TRUE)</span></div><div class='line' id='LC177'><span class="s">			TissueDayPool[[k]]=tissueDayPool</span></div><div class='line' id='LC178'><span class="s">			PercentageT[[k]]=percentageT</span></div><div class='line' id='LC179'><span class="s">			StatsT[[k]]=statsT</span></div><div class='line' id='LC180'><span class="s">			# printing results</span></div><div class='line' id='LC181'><span class="s">			resultsT=c(resultsT,print(paste(tissue[k]," ",days[j]," - ",StatsT[[k]][j]," [",PercentageT[[k]][j],"%]",sep="")))</span></div><div class='line' id='LC182'><span class="s">		}</span></div><div class='line' id='LC183'><span class="s">		print(paste("Total sequences :",sum(StatsT[[k]])))</span></div><div class='line' id='LC184'><span class="s">	}</span></div><div class='line' id='LC185'><span class="s">	return(list(dayTissue=TissueDayPool,results=resultsT))</span></div><div class='line' id='LC186'><span class="s">}</span></div><div class='line' id='LC187'><span class="s">###############################################################################</span></div><div class='line' id='LC188'><span class="s"># animal stats calculator</span></div><div class='line' id='LC189'><span class="s">aniStats=function(animal,days,tissuePool){</span></div><div class='line' id='LC190'><span class="s"># variable declarations</span></div><div class='line' id='LC191'><span class="s">animalPool_pattern&lt;-list();animalDayPool&lt;-list();AnimalDayPool&lt;-list();checkAni&lt;-c();aniColumn&lt;-c();percentageA&lt;-c();statsA&lt;-c();StatsA&lt;-list();PercentageA&lt;-list();patA&lt;-c();resultsA&lt;-c()</span></div><div class='line' id='LC192'><span class="s">	dayPool=tissuePool</span></div><div class='line' id='LC193'><span class="s">	print(paste("Stats for",length(animal),"animals"))</span></div><div class='line' id='LC194'><span class="s">	for (k in 1:length(animal)){</span></div><div class='line' id='LC195'><span class="s">	print(paste("Stats for animals:",animal[k]))</span></div><div class='line' id='LC196'><span class="s">		for (j in 1:length(days)){</span></div><div class='line' id='LC197'><span class="s">			# animal column detector</span></div><div class='line' id='LC198'><span class="s">			for (i in 1:length(dayPool[[j]])){</span></div><div class='line' id='LC199'><span class="s">				checkAni[i]=length(which(dayPool[[j]][[i]]==animal[k]))</span></div><div class='line' id='LC200'><span class="s">				if (checkAni[i]&gt;=1) {aniColumn[j]=i}</span></div><div class='line' id='LC201'><span class="s">			}</span></div><div class='line' id='LC202'><span class="s">			# outputs empty Animal day column, if empty</span></div><div class='line' id='LC203'><span class="s">			if (is.null(aniColumn[j])){print(paste("No",animal,"for Day",days[j]));statsA[j]=0;percentageA[j]=0}</span></div><div class='line' id='LC204'><span class="s">			# filters input animal specific data for the specific dayPool and calculates stats</span></div><div class='line' id='LC205'><span class="s">			else{		</span></div><div class='line' id='LC206'><span class="s">				animalPool_pattern[[j]]=which(dayPool[[j]][[aniColumn[j]]]==animal[k])</span></div><div class='line' id='LC207'><span class="s">				animalDayPool[[j]]=dayPool[[j]][animalPool_pattern[[j]],1:length(dayPool[[j]])]</span></div><div class='line' id='LC208'><span class="s">				statsA[j]=length(animalDayPool[[j]][[i]])</span></div><div class='line' id='LC209'><span class="s">				percentageA[j]=round(((length(animalPool_pattern[[j]])/length(dayPool[[j]][[aniColumn[j]]]==animal[k]))*100),digits=2)</span></div><div class='line' id='LC210'><span class="s">				# replaces NA with 0</span></div><div class='line' id='LC211'><span class="s">				patA=which(sapply(percentageA,is.na),arr.ind=TRUE)</span></div><div class='line' id='LC212'><span class="s">				percentageA[patA]=0</span></div><div class='line' id='LC213'><span class="s">			}</span></div><div class='line' id='LC214'><span class="s">			#which(sapply(percentageA,is.na),arr.ind=TRUE)</span></div><div class='line' id='LC215'><span class="s">			AnimalDayPool[[k]]=animalDayPool</span></div><div class='line' id='LC216'><span class="s">			PercentageA[[k]]=percentageA</span></div><div class='line' id='LC217'><span class="s">			StatsA[[k]]=statsA</span></div><div class='line' id='LC218'><span class="s">			# printing results</span></div><div class='line' id='LC219'><span class="s">			resultsA=c(resultsA,print(paste(animal[k]," ",days[j]," - ",StatsA[[k]][j]," [",PercentageA[[k]][j],"%]",sep="")))</span></div><div class='line' id='LC220'><span class="s">		}</span></div><div class='line' id='LC221'><span class="s">		print(paste("Total sequences :",sum(StatsA[[k]])))</span></div><div class='line' id='LC222'><span class="s">	}</span></div><div class='line' id='LC223'><span class="s">	return(list(dayAnimal=AnimalDayPool,results=resultsA))</span></div><div class='line' id='LC224'><span class="s">}</span></div><div class='line' id='LC225'><span class="s">##############################################################################</span></div><div class='line' id='LC226'><span class="s"># day segmentar</span></div><div class='line' id='LC227'><span class="s">dayStats=function(days,pool){</span></div><div class='line' id='LC228'><span class="s"># variable declarations</span></div><div class='line' id='LC229'><span class="s">dayPool&lt;-list();d&lt;-list()</span></div><div class='line' id='LC230'><span class="s">poolDay=pool$Day</span></div><div class='line' id='LC231'><span class="s">	for (i in 1:length(days)){</span></div><div class='line' id='LC232'><span class="s">		d[[i]]=which(poolDay==days[i])</span></div><div class='line' id='LC233'><span class="s">		dayPool[[i]]=pool[d[[i]],1:length(pool)]</span></div><div class='line' id='LC234'><span class="s">	}</span></div><div class='line' id='LC235'><span class="s">	return(dayPool)</span></div><div class='line' id='LC236'><span class="s">}</span></div><div class='line' id='LC237'><span class="s">##############################################################################	</span></div><div class='line' id='LC238'><br/></div><div class='line' id='LC239'><span class="s"># function for detecting tissue column and producing stats [in ALPHA phase]</span></div><div class='line' id='LC240'><span class="s">tiss&lt;-function(days,dayPool,tissue){</span></div><div class='line' id='LC241'><span class="s">	# tissue column detector</span></div><div class='line' id='LC242'><span class="s">	for (j in 1:length(days)){</span></div><div class='line' id='LC243'><span class="s">		for (i in 1:length(dayPool[[j]])){</span></div><div class='line' id='LC244'><span class="s">			checkTiss[i]=length(which(dayPool[[j]][[i]]==tissue))</span></div><div class='line' id='LC245'><span class="s">			if (checkTiss[i]&gt;=1) {tissColumn[j]=i}</span></div><div class='line' id='LC246'><span class="s">		}</span></div><div class='line' id='LC247'><span class="s">		# outputs empty Tissue day column</span></div><div class='line' id='LC248'><span class="s">		if (is.null(tissColumn[j])) {print(paste("No",tissue,"for Day",days[j]));Stats[j]=0}</span></div><div class='line' id='LC249'><span class="s">		else {		</span></div><div class='line' id='LC250'><span class="s">			# filters input tissue specific data for the specific dayPool and calculates stats</span></div><div class='line' id='LC251'><span class="s">			tissuePool_pattern[[j]]=which(dayPool[[j]][[tissColumn[j]]]==tissue)</span></div><div class='line' id='LC252'><span class="s">			tissueDayPool[[j]]=dayPool[[j]][tissuePool_pattern[[j]],1:length(dayPool[[j]])]</span></div><div class='line' id='LC253'><span class="s">			Stats[j]=length(tissueDayPool[[j]][[i]])</span></div><div class='line' id='LC254'><span class="s">			percentage[j]=round(((length(tissuePool_pattern[[j]])/length(dayPool[[j]][[tissColumn[j]]]==tissue))*100),digits=2)</span></div><div class='line' id='LC255'><span class="s">		}</span></div><div class='line' id='LC256'><span class="s">	}</span></div><div class='line' id='LC257'><span class="s">}</span></div><div class='line' id='LC258'><span class="s">##########################################################################################################################</span></div><div class='line' id='LC259'><span class="s">##########################################################################################################################</span></div><div class='line' id='LC260'><span class="s">##########################################################################################################################</span></div><div class='line' id='LC261'><span class="s">#####################################	IN PROCESS	######################################################################</span></div><div class='line' id='LC262'><span class="s">##########################################################################################################################</span></div><div class='line' id='LC263'><span class="s">##########################################################################################################################</span></div><div class='line' id='LC264'><span class="s">##########################################################################################################################</span></div><div class='line' id='LC265'><br/></div><div class='line' id='LC266'><span class="s"># mutation filter</span></div><div class='line' id='LC267'><span class="s">mut&lt;-function(poolSeq,epi){</span></div><div class='line' id='LC268'><span class="s">#WT=length(grep(epi,poolSeq,value=FALSE,ignore.case=FALSE))</span></div><div class='line' id='LC269'><span class="s">epiChar=noquote(strsplit(epi,NULL)[[1]])</span></div><div class='line' id='LC270'><span class="s">for (i in 1:4) {</span></div><div class='line' id='LC271'><span class="s">mutChar=gsub(&#39;</span><span class="k-Variable">T</span><span class="s">&#39;,base[i],epiChar[1])</span></div><div class='line' id='LC272'><span class="s">epiCh</span></div><div class='line' id='LC273'><span class="s">print(paste(mutChar,epi,sep=""))</span></div><div class='line' id='LC274'><span class="s">}</span></div><div class='line' id='LC275'><span class="s">return(epiSeq)</span></div><div class='line' id='LC276'><span class="s">}</span></div><div class='line' id='LC277'><span class="s">#epiChar=noquote(strsplit(epi,NULL)[[1]])</span></div><div class='line' id='LC278'><span class="s">#epiCharStart=paste(&#39;</span><span class="o">^</span><span class="s">&#39;,epiChar[1],sep="")</span></div><div class='line' id='LC279'><span class="s">#epiChar[1]=epiCharStart</span></div><div class='line' id='LC280'><span class="s">#base=c(&#39;</span>A<span class="s">&#39;,&#39;</span><span class="k-Variable">T</span><span class="s">&#39;,&#39;</span>G<span class="s">&#39;,&#39;</span>C<span class="s">&#39;</span><span class="err">)</span></div><div class='line' id='LC281'><span class="c1">#epiMut&lt;-c();epiSeq&lt;-c()</span></div><div class='line' id='LC282'><span class="c1">#for (i in 1:4) {</span></div><div class='line' id='LC283'><span class="c1">#	for (a in 1:length(epiChar)){</span></div><div class='line' id='LC284'><span class="c1">#		epiMut[i]=print(gsub(epiChar[a],base[i],epi))</span></div><div class='line' id='LC285'><span class="c1">#		#print(length(grep(epiMut[i],poolSeq,value=FALSE,ignore.case=FALSE)))</span></div><div class='line' id='LC286'><span class="c1">#	}</span></div><div class='line' id='LC287'><span class="c1">#}</span></div><div class='line' id='LC288'><br/></div></pre></div>
              
            
          </td>
        </tr>
      </table>
    
  </div>


      </div>
    </div>

  


    </div>
  
      
    </div>

    <div id="footer" class="clearfix">
      <div class="site">
        <div class="sponsor">
          <a href="http://www.rackspace.com" class="logo">
            <img alt="Dedicated Server" src="http://assets2.github.com/images/modules/footer/rackspace_logo.png?v2?103721b48fef7a748c6e037612b6e4421df725a5" />
          </a>
          Powered by the <a href="http://www.rackspace.com ">Dedicated
          Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
          Computing</a> of Rackspace Hosting<span>&reg;</span>
        </div>

        <ul class="links">
          <li class="blog"><a href="http://github.com/blog">Blog</a></li>
          <li><a href="http://support.github.com?sso=_-D9qfwBNALVWtVhGCwVCzX3G3akBoO36XQ8M-kMER3mItaw2V5DpBTBMMTZiae4PH3VBdiRvmhyw177hxP5grXBeb2qCSgEKVr8Wpxhn3AKdZacyZmDVl4g9mhSY3Ta91Cb6AyTg-_nK6-7W9YNp1j_HiiwFbIGP2-fdDzSuGGjGrDNorfTJ_m5VeJN-f3BIFwSeU5dWNXJoYfXCjroMrnM6cPb23ffby0teHk7Jd4">Support</a></li>
          <li><a href="http://github.com/training">Training</a></li>
          <li><a href="http://jobs.github.com">Job Board</a></li>
          <li><a href="http://shop.github.com">Shop</a></li>
          <li><a href="http://github.com/contact">Contact</a></li>
          <li><a href="http://develop.github.com">API</a></li>
          <li><a href="http://status.github.com">Status</a></li>
        </ul>
        <ul class="sosueme">
          <li class="main">&copy; 2010 <span id="_rrt" title="0.15531s from fe3.rs.github.com">GitHub</span> Inc. All rights reserved.</li>
          <li><a href="/site/terms">Terms of Service</a></li>
          <li><a href="/site/privacy">Privacy</a></li>
          <li><a href="http://github.com/security">Security</a></li>
        </ul>
      </div>
    </div><!-- /#footer -->

    
      
      
        <!-- current locale:  -->
        <div class="locales">
          <div class="site">

            <ul class="choices clearfix limited-locales">
              <li><span class="current">English</span></li>
              
                
                  <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
                
              
                
                  <li><a rel="nofollow" href="?locale=fr">Français</a></li>
                
              
                
                  <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
                
              
                
                  <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
                
              
                
                  <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
                
              
                
                  <li><a rel="nofollow" href="?locale=zh">中文</a></li>
                
              
              <li class="all"><a href="#" class="minibutton btn-forward js-all-locales"><span><span class="icon"></span>See all available languages</span></a></li>
            </ul>

            <div class="all-locales clearfix">
              <h3>Your current locale selection: <strong>English</strong>. Choose another?</h3>
              
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=en">English</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=af">Afrikaans</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=ca">Català</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=cs">Čeština</a></li>
                    
                  
                </ul>
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=es">Español</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=fr">Français</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=hr">Hrvatski</a></li>
                    
                  
                </ul>
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=id">Indonesia</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=it">Italiano</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=nl">Nederlands</a></li>
                    
                  
                </ul>
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=no">Norsk</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=pl">Polski</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
                    
                  
                </ul>
              
                <ul class="choices">
                  
                    
                      <li><a rel="nofollow" href="?locale=sr">Српски</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=sv">Svenska</a></li>
                    
                  
                    
                      <li><a rel="nofollow" href="?locale=zh">中文</a></li>
                    
                  
                </ul>
              
            </div>

          </div>
          <div class="fade"></div>
        </div>
      
    

    <script>window._auth_token = "9ad74e0b65fbf9335525ec4fe2b4d7e84eb4cb7f"</script>
    <div id="keyboard_shortcuts_pane" style="display:none">
  <h2>Keyboard Shortcuts</h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column middle">
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Open tree</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>p</dt>
        <dd>Open parent</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column last">
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->
  </div><!-- /.columns.equacols -->

  <div class="rule"></div>

  <h3>Issues</h3>

  <div class="columns threecols">
    <div class="column first">
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>x</dt>
        <dd>Toggle select target</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column middle">
      <dl class="keyboard-mappings">
        <dt>I</dt>
        <dd>Mark selected as read</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>U</dt>
        <dd>Mark selected as unread</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>e</dt>
        <dd>Close selected</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Remove selected from view</dd>
      </dl>
    </div><!-- /.column.middle -->
    <div class="column last">
      <dl class="keyboard-mappings">
        <dt>c</dt>
        <dd>Create issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>l</dt>
        <dd>Create label</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>i</dt>
        <dd>Back to inbox</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>u</dt>
        <dd>Back to issues</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>/</dt>
        <dd>Focus issues search</dd>
      </dl>
    </div>
  </div>

  <div class="rule"></div>

  <h3>Network Graph</h3>
  <div class="columns equacols">
    <div class="column first">
      <dl class="keyboard-mappings">
        <dt>← <em>or</em> h</dt>
        <dd>Scroll left</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>→ <em>or</em> l</dt>
        <dd>Scroll right</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>↑ <em>or</em> k</dt>
        <dd>Scroll up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>↓ <em>or</em> j</dt>
        <dd>Scroll down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Toggle visibility of head labels</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column last">
      <dl class="keyboard-mappings">
        <dt>shift ← <em>or</em> shift h</dt>
        <dd>Scroll all the way left</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift → <em>or</em> shift l</dt>
        <dd>Scroll all the way right</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift ↑ <em>or</em> shift k</dt>
        <dd>Scroll all the way up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift ↓ <em>or</em> shift j</dt>
        <dd>Scroll all the way down</dd>
      </dl>
    </div><!-- /.column.last -->
  </div>

</div>
    

    <!--[if IE 8]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie8")
    </script>
    <![endif]-->

    <!--[if IE 7]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie7")
    </script>
    <![endif]-->

    <script type="text/javascript">
      _kmq.push(['trackClick', 'entice-signup-button', 'Entice banner clicked']);
      
    </script>
    
  </body>
</html>

