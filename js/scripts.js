function mailTo(address) {
  return '<a href="mailto:' + address + '">' + address + '</a>';
}

function setEmail() {
  // some encoded strings
  var user = '&#97;&#98;&#98;&#111;&#116;&#116;&#107;';
  var osu  = '&#64;&#101;&#101;&#99;&#115;&#46;&#111;&#114;&#101;&#103;&#111;&#110;&#115;&#116;&#97;&#116;&#101;&#46;&#101;&#100;&#117;';
  var osuList = '&#64;&#101;&#110;&#103;&#114;&#46;&#111;&#114;&#115;&#116;&#46;&#101;&#100;&#117;';

  // insert my email address
  $('.osu-email').html(mailTo(user + osu));

  // insert OSU mailing list address
  $('.osu-mailing-list')
    .html(
      function(i,name) {
        return mailTo(name + osuList);
      }
    );

  // insert other OSU eecs email address
  $('.other-osu-email')
    .html(
      function(i,name) {
        return mailTo(name + osu);
      }
    );
}

function linkName() {
  $('.my-name').html('<a href="http://web.engr.oregonstate.edu/~abbottk/">Keeley Abbott</a>');
}

function toggleAbstract(key) {
  $('.pub-abstract.'+key).slideToggle();
}

function toggleOutline(key) {
  $('.slides-outline.'+key).slideToggle();
}
