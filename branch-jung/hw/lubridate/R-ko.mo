Þ    +      t  ;   Ì      ¸  4   ¹  9   î  H   (  9   q  }   «     )  {   ¶  }   2     °     ²  }   ?  (   ½  !   æ  !        *     J  O   P  ^      \   ÿ  h   \	  2   Å	  H   ø	  2   A
     t
     
  f   
     û
  &        B  &   a       $   ¦  :   Ë  :     8   A  0   z     «     ¼  -   Ü     
  "        9  Ý  R  [   0  f     {   ó  f   o  Á   Ö  Ë     µ   d  Å        à  Ç   â  Á   ª  6   l  >   £  8   â  8        T  }   b     à     l     ö  L   x  J   Å  >     8   O       À     :   O  8     E   Ã  /   	  =   9  I   w  J   Á  X     P   e  :   ¶     ñ  !   þ  N         o       !                                 (         +                       %   )                   *                                $   !   '                  "      
                         #   &   	                    %% not defined for Interval class
Consider setdiff() %m+% only handles Period objects with month or year units %m+% only handles month and years. Add other periods separately with '+' %m-% only handles Period objects with month or year units + undefined for Interval class:
  manipulate with int_start(), int_end() and int_shift()
  or change class with as.duration() + undefined for Interval class:
  manipulate with int_start(), int_end() and int_shift()
  or change class with as.duration() or as.period() + undefined for Interval class:
  manipulate with int_start(), int_end() and int_shift()
  or change class with as.period() + undefined for Interval class:
Consider intersect(), union(), or setdiff()
or change class with as.period() or as.duration() , - undefined for Interval class:
  manipulate with int_start(), int_end() and int_shift()
  or change class with as.duration() or as.period() - undefined for Interval class:
Consider intersect(), union(), or setdiff()
or change class with as.period() or as.duration() Argument 1 is not a recognized date-time Cannot divide numeric by duration Cannot divide numeric by interval Cannot divide numeric by period Cases Incompatible timespan classes:
  change class with as.duration() or as.period() Incompatible timespan classes:
  change class with as.duration() or put interval in numerator. Incompatible timespan classes:
  change class with as.period() or put interval in numerator. Internal function parse_date has been removed from lubridate package. Plese use parse_date_time instead. No formats could be infered from the training set. Remainder cannot be expressed as fraction of a period.
  Performing %/%. Union includes intervening time between intervals. Unknown formats supplied: ^@|@$ an interval cannot be shifted by another interval. 
		Convert second interval to a period or duration. arguments must have same length by is not a recognized timespan object cannot map durations to months cannot multiply time span by time span coercing interval to duration date(s) not in POSIXt or Date format estimate only: convert difftimes to intervals for accuracy estimate only: convert durations to intervals for accuracy estimate only: convert periods to intervals for accuracy estimate only: convert to intervals for accuracy failed to parse. interval / interval not defined interval does not align: coercing to duration parsed with result in discontinuous intervals. unrecognized date format Project-Id-Version: lubridate 1.2.1
Report-Msgid-Bugs-To: bugs@r-project.org
POT-Creation-Date: 2013-03-29 14:35
PO-Revision-Date: 2013-04-01 13:56+0900
Last-Translator: Eugene Jung <muoe78@gmail.com>
Language-Team: R Development Translation Teams (Korean) <gnustats@korea.gnu.org>
Language: ko
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Poedit-SourceCharset: utf-8
X-Generator: Poedit 1.5.5
 %% ê°ê²© í´ëì¤(interval class)ë¡ ì ìëì§ ìì
setdiff()ë¥¼ ê³ ë ¤íì­ìì¤. %m+%ë§ ì¤ë¡ì§ ì(month) ëë ë(year) ë¨ìë¡ ê¸°ê° ê°ì²´(period objects)ë¥¼ ë¤ë£¹ëë¤. %m+%ë§ ì¤ë¡ì§ ì(month) ëë ë(year)ì ë¤ë£¹ëë¤. ë¤ë¥¸ ê¸°ê°ì ë³ëë¡ "+"ì ìí´ ì¶ê°íì­ìì¤. %m-%ë§ ì¤ë¡ì§ ì(month) ëë ë(year) ë¨ìë¡ ê¸°ê° ê°ì²´(period objects)ë¥¼ ë¤ë£¹ëë¤. + ì ìëì§ ìì ê°ê²© í´ëì¤(interval class)"
 int_start(), int_end(), ê·¸ë¦¬ê³  int_shift()ë¡ ì¡°ì íì­ìì¤.
 ëë as.duration()ì¼ë¡ í´ëì¤(class)ë¥¼ ë³ê²½íì­ìì¤. ê°ê²© í´ëì¤(interval class)ê° ì ìëì§ ìì:
int_start(), int_end(), ê·¸ë¦¬ê³  int_shift()ë¡ ì¡°ì íì­ìì¤.
ëë as.duration()ì´ë as.period()ì¼ë¡ í´ëì¤ë¥¼ ë³ê²½íì­ìì¤. + ê°ê²© í´ëì¤(interval class)ê° ì ìëì§ ìì:
int_start(), int_end(), ê·¸ë¦¬ê³  int_shift()ë¡ ì¡°ì íì­ìì¤
ëë as.period()ë¡ í´ëì¤ë¥¼ ë³ê²½íì­ìì¤. + ê°ê²© í´ëì¤(interval class)ê° ì ìëì§ ìì:
intersect(), union() ëë setfiff()ë¥¼ ê³ ë ¤í´ ë³´ì­ìì¤
ëë as.period()ë as.duration()ì¼ë¡ í´ëì¤ë¥¼ ë³ê²½íì­ìì¤. , ì ìëì§ ìì ê°ê²© í´ëì¤(interval class):
int_start(), int_end() ê·¸ë¦¬ê³  int_shift()ë¡ ì¡°ì í´ ë³´ì­ìì¤
ëë as.duration()ì´ë as.period()ë¡ í´ëì¤ë¥¼ ë³ê²½íì­ìì¤. ì ìëì§ ìì ê°ê²© í´ëì¤(interval class):
intersect(), union(), ëë setdiff()ë¥¼ ê³ ë ¤í´ ë³´ì­ìì¤
ëë as.period()ë as.duration()ì¼ë¡ í´ëì¤ë¥¼ ë³ê²½íì­ìì¤. ì¸ì 1ì date-timeì¼ë¡ ì¸ìëì§ ììµëë¤. ëë ì´ìì ìí´ ì«ìë¡ ëëì´ì§ì§ ììµëë¤. ê°ê²©ì ìí´ ì«ìë¡ ëëì´ì§ì§ ììµëë¤. ê°ê²©ì ìí´ ì«ìë¡ ëëì´ì§ì§ ììµëë¤. ì¬ë¡(cases) í¸íëì§ ìë ê¸°ê°  í´ëì¤(timespan class):
   as.duration()ì´ë as.period()ë¡ í´ëì¤ë¥¼ ë³ê²½íì­ìì¤. í¸íëì§ ìë ê¸°ê° í´ëì¤(timespan class):
as.duration()ì¼ë¡ í´ëì¤ë¥¼ ë³ê²½íê±°ë ë¶ìì ê°ê²© ì½ìíì­ìì¤. í¸íëì§ ìë ê¸°ê° í´ëì¤(timespan class):
as.period()ë¡ í´ëì¤ë¥¼ ë³ê²½íê±°ë ë¶ìì ê°ê²©ì ì½ìíì­ìì¤. ë´ë¶ í¨ì parse_dateê° lubridate í¨í¤ì§ìì ì ê±°ëììµëë¤. ëì ì parse_date_timeì ì¬ì©í´ ì£¼ì­ìì¤. ì¤íì§ë¨(traininig set)ì¼ë¡ ë¶í° ì¶ì í  ì ìë íì(format) ëë¨¸ì§ë ê¸°ê°ì ì¼ë¶ë¡ ííë  ì ììµëë¤.
ì§íë¥  %/% ì ëì¨(union)ì ê°ê²©ê° ë³íìê°ì í¬í¨í©ëë¤. ì ì ìë íí(formats)ê° ìë ¥ëììµëë¤. ^@|@$ í¹ì  ê°ê²©(interval)ì´ ë¤ë¥¸ ê°ê²©(interval)ì¼ë¡ ì íë  ì ììµëë¤. 
		ë ë²ì§¸ ê°ê²©(interval)ì ì¼ì  ê¸°ê°(period)ì´ë ëë ì´ì(duration)ì¼ë¡ ë³íí©ëë¤. ì¸ì(arguments)ë ê°ì ê¸¸ì´ë¥¼ ê°ì ¸ì¼ í©ëë¤. ìë ¤ì§ timespan ê°ì²´ì ìí ê²ì´ ìëëë¤. ëë ì´ì(durations)ì ì(months)ë¡ ëíë¼ ì ììµëë¤. ê¸°ê°ì ê¸°ê°ì¼ë¡ ê³±í  ì ììµëë¤. ê°ê²©(interval)ì ëë ì´ì(duration)ì¼ë¡ ê°ì ë³í ë ì§ê° POSIXt ëë Date íí(format)ì ì¼ì¹íì§ ììµëë¤. ì¶ì ë§: ì íì±ì ìí´ difftimesë¥¼ ê°ê²©(intervals)ì¼ë¡ ë³í ì¶ì ë§: ì íì±ì ìí´ ëë ì´ì(durations)ë¥¼ ê°ê²©(intervals)ë¡ ë³íí¨ ì¶ì ë§: ì íì±ì ìí´ ê¸°ê°(periods)ì ê°ê²©(intervals)ì¼ë¡ ë³í ì¶ì ë§: ì íì±ì ìí´ ê°ê²©(intervals)ë¡ ë³í parse ì¤í¨ ê°ê²©/ì ìëì§ ìì ê°ê²© ê°ê²©ì´ ì ë ¬ëì§ ììµëë¤: ëë ì´ìì¼ë¡ ê°ì ë³íí©ëë¤. ë¤ìì¼ë¡ parse ì´ì°ê¸°ê°ì ê²°ê³¼ ì¸ìëì§ ìë ë ì§ íì 