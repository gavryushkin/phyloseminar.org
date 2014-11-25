---
layout: inset
title: phyloseminar.org | recorded
id: recorded
---

<%namespace name="util" file="util.mako"/>

<h1>previously recorded seminars</h1>
<p class="alert alert-info">
  Unfortunately we were unable to convert a few of the old seminar videos for YouTube;
  please accept our apologies.
</p>
<div class="panel-group" id="seminars">
  % for category, rows in categories:
  <h2>${category | h}</h2>
  % for item in rows:
  ${util.seminar_panel(item, collapse=True, date_only=True, panel_id="{0}{1}".format(loop.parent.index, loop.index))}
  % endfor
  % endfor
</div>
