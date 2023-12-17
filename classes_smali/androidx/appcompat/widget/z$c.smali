.class public final Landroidx/appcompat/widget/z$c;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public static a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;IILandroid/widget/TextView;Landroid/text/TextPaint;Landroidx/appcompat/widget/z$f;)Landroid/text/StaticLayout;
    .registers 9

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v1, v0, p5, p2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 17
    move-result p2

    .line 18
    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 21
    move-result p5

    .line 22
    invoke-virtual {p1, p2, p5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p4}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 29
    move-result p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p4}, Landroid/widget/TextView;->getBreakStrategy()I

    .line 37
    move-result p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p4}, Landroid/widget/TextView;->getHyphenationFrequency()I

    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 49
    move-result-object p1

    .line 50
    const/4 p2, -0x1

    .line 51
    if-ne p3, p2, :cond_37

    .line 53
    const p3, 0x7fffffff

    .line 56
    :cond_37
    invoke-virtual {p1, p3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 59
    :try_start_3a
    invoke-virtual {p6, p0, p4}, Landroidx/appcompat/widget/z$f;->a(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 62
    goto :goto_45

    .line 63
    :catch_3e
    const-string p1, "ACTVAutoSizeHelper"

    .line 65
    const-string p2, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect"

    .line 67
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_45
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
