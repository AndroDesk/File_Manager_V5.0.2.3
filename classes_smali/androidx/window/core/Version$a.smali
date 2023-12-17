.class public final Landroidx/window/core/Version$a;
.super Ljava/lang/Object;
.source "Version.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/core/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Landroidx/window/core/Version;
    .registers 6
    .param p0  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_7d

    .line 4
    invoke-static {p0}, Lo3/e;->h0(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_b

    .line 10
    goto/16 :goto_7d

    .line 12
    :cond_b
    const-string v1, "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?"

    .line 14
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1c

    .line 28
    return-object v0

    .line 29
    :cond_1c
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_25

    .line 36
    move-object v1, v0

    .line 37
    goto :goto_2d

    .line 38
    :cond_25
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v1

    .line 46
    :goto_2d
    if-nez v1, :cond_30

    .line 48
    return-object v0

    .line 49
    :cond_30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_3d

    .line 60
    move-object v2, v0

    .line 61
    goto :goto_45

    .line 62
    :cond_3d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    move-result v2

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v2

    .line 70
    :goto_45
    if-nez v2, :cond_48

    .line 72
    return-object v0

    .line 73
    :cond_48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v2

    .line 77
    const/4 v3, 0x3

    .line 78
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    if-nez v3, :cond_55

    .line 84
    move-object v3, v0

    .line 85
    goto :goto_5d

    .line 86
    :cond_55
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    move-result v3

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v3

    .line 94
    :goto_5d
    if-nez v3, :cond_60

    .line 96
    return-object v0

    .line 97
    :cond_60
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v0

    .line 101
    const/4 v3, 0x4

    .line 102
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_70

    .line 108
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    goto :goto_72

    .line 113
    :cond_70
    const-string p0, ""

    .line 115
    :goto_72
    new-instance v3, Landroidx/window/core/Version;

    .line 117
    const-string v4, "description"

    .line 119
    invoke-static {p0, v4}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {v3, v1, v2, v0, p0}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    .line 125
    return-object v3

    .line 126
    :cond_7d
    :goto_7d
    return-object v0
.end method
