.class public final Lm0/c$f;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Lm0/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Landroid/content/ClipData;

.field public final b:I

.field public final c:I

.field public final d:Landroid/net/Uri;

.field public final e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lm0/c$c;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lm0/c$c;->a:Landroid/content/ClipData;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object v0, p0, Lm0/c$f;->a:Landroid/content/ClipData;

    .line 11
    iget v0, p1, Lm0/c$c;->b:I

    .line 13
    const/4 v1, 0x5

    .line 14
    const-string v2, "source"

    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-ltz v0, :cond_70

    .line 22
    if-gt v0, v1, :cond_52

    .line 24
    iput v0, p0, Lm0/c$f;->b:I

    .line 26
    iget v0, p1, Lm0/c$c;->c:I

    .line 28
    and-int/lit8 v1, v0, 0x1

    .line 30
    if-ne v1, v0, :cond_2a

    .line 32
    iput v0, p0, Lm0/c$f;->c:I

    .line 34
    iget-object v0, p1, Lm0/c$c;->d:Landroid/net/Uri;

    .line 36
    iput-object v0, p0, Lm0/c$f;->d:Landroid/net/Uri;

    .line 38
    iget-object p1, p1, Lm0/c$c;->e:Landroid/os/Bundle;

    .line 40
    iput-object p1, p0, Lm0/c$f;->e:Landroid/os/Bundle;

    .line 42
    return-void

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string v1, "Requested flags 0x"

    .line 47
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, ", but only 0x"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, " are allowed"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p1

    .line 83
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 87
    new-array v4, v4, [Ljava/lang/Object;

    .line 89
    aput-object v2, v4, v6

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v2

    .line 95
    aput-object v2, v4, v5

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v1

    .line 101
    aput-object v1, v4, v3

    .line 103
    const-string v1, "%s is out of range of [%d, %d] (too high)"

    .line 105
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p1

    .line 113
    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 115
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 117
    new-array v4, v4, [Ljava/lang/Object;

    .line 119
    aput-object v2, v4, v6

    .line 121
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v2

    .line 125
    aput-object v2, v4, v5

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v1

    .line 131
    aput-object v1, v4, v3

    .line 133
    const-string v1, "%s is out of range of [%d, %d] (too low)"

    .line 135
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1
.end method


# virtual methods
.method public final a()Landroid/content/ClipData;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/c$f;->a:Landroid/content/ClipData;

    .line 3
    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lm0/c$f;->c:I

    .line 3
    return v0
.end method

.method public final c()Landroid/view/ContentInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()I
    .registers 2

    .line 1
    iget v0, p0, Lm0/c$f;->b:I

    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "ContentInfoCompat{clip="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lm0/c$f;->a:Landroid/content/ClipData;

    .line 9
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", source="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lm0/c$f;->b:I

    .line 23
    if-eqz v1, :cond_3b

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eq v1, v2, :cond_38

    .line 28
    const/4 v2, 0x2

    .line 29
    if-eq v1, v2, :cond_35

    .line 31
    const/4 v2, 0x3

    .line 32
    if-eq v1, v2, :cond_32

    .line 34
    const/4 v2, 0x4

    .line 35
    if-eq v1, v2, :cond_2f

    .line 37
    const/4 v2, 0x5

    .line 38
    if-eq v1, v2, :cond_2c

    .line 40
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    goto :goto_3d

    .line 45
    :cond_2c
    const-string v1, "SOURCE_PROCESS_TEXT"

    .line 47
    goto :goto_3d

    .line 48
    :cond_2f
    const-string v1, "SOURCE_AUTOFILL"

    .line 50
    goto :goto_3d

    .line 51
    :cond_32
    const-string v1, "SOURCE_DRAG_AND_DROP"

    .line 53
    goto :goto_3d

    .line 54
    :cond_35
    const-string v1, "SOURCE_INPUT_METHOD"

    .line 56
    goto :goto_3d

    .line 57
    :cond_38
    const-string v1, "SOURCE_CLIPBOARD"

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    const-string v1, "SOURCE_APP"

    .line 62
    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", flags="

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Lm0/c$f;->c:I

    .line 72
    and-int/lit8 v2, v1, 0x1

    .line 74
    if-eqz v2, :cond_4e

    .line 76
    const-string v1, "FLAG_CONVERT_TO_PLAIN_TEXT"

    .line 78
    goto :goto_52

    .line 79
    :cond_4e
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    :goto_52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lm0/c$f;->d:Landroid/net/Uri;

    .line 88
    const-string v2, ""

    .line 90
    if-nez v1, :cond_5d

    .line 92
    move-object v1, v2

    .line 93
    goto :goto_79

    .line 94
    :cond_5d
    const-string v1, ", hasLinkUri("

    .line 96
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    move-result-object v1

    .line 100
    iget-object v3, p0, Lm0/c$f;->d:Landroid/net/Uri;

    .line 102
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 109
    move-result v3

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v3, ")"

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    :goto_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Lm0/c$f;->e:Landroid/os/Bundle;

    .line 127
    if-nez v1, :cond_81

    .line 129
    goto :goto_83

    .line 130
    :cond_81
    const-string v2, ", hasExtras"

    .line 132
    :goto_83
    const-string v1, "}"

    .line 134
    invoke-static {v0, v2, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    return-object v0
.end method
