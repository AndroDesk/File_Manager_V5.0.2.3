.class Landroidx/core/content/IntentSanitizer$Api16Impl;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api16Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/IntentSanitizer$Api16Impl$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static checkOtherMembers(ILandroid/content/ClipData$Item;Ll0/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ClipData$Item;",
            "Ll0/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_28

    .line 13
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v1, "ClipData item at position "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p0, " contains htmlText, textLinks or intent: "

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p2, p0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 41
    :cond_28
    return-void
.end method

.method public static sanitizeClipData(Landroid/content/Intent;Landroid/content/Intent;Ll0/f;ZLl0/f;Ll0/a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ll0/f<",
            "Landroid/content/ClipData;",
            ">;Z",
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;",
            "Ll0/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    if-eqz p2, :cond_14

    .line 10
    invoke-interface {p2, p0}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_14

    .line 16
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 19
    goto/16 :goto_c0

    .line 21
    :cond_14
    const/4 p2, 0x0

    .line 22
    const/4 v0, 0x0

    .line 23
    move-object v1, v0

    .line 24
    :goto_17
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 27
    move-result v2

    .line 28
    if-ge p2, v2, :cond_bb

    .line 30
    invoke-virtual {p0, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 33
    move-result-object v2

    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    const/16 v4, 0x1f

    .line 38
    if-lt v3, v4, :cond_2b

    .line 40
    invoke-static {p2, v2, p5}, Landroidx/core/content/IntentSanitizer$Api16Impl$Api31Impl;->checkOtherMembers(ILandroid/content/ClipData$Item;Ll0/a;)V

    .line 43
    goto :goto_2e

    .line 44
    :cond_2b
    invoke-static {p2, v2, p5}, Landroidx/core/content/IntentSanitizer$Api16Impl;->checkOtherMembers(ILandroid/content/ClipData$Item;Ll0/a;)V

    .line 47
    :goto_2e
    if-eqz p3, :cond_35

    .line 49
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 52
    move-result-object v3

    .line 53
    goto :goto_52

    .line 54
    :cond_35
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_51

    .line 60
    const-string v3, "Item text cannot contain value. Item position: "

    .line 62
    const-string v4, ". Text: "

    .line 64
    invoke-static {v3, p2, v4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    invoke-interface {p5, v3}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 82
    :cond_51
    move-object v3, v0

    .line 83
    :goto_52
    const-string v4, ". URI: "

    .line 85
    const-string v5, "Item URI is not allowed. Item position: "

    .line 87
    if-nez p4, :cond_71

    .line 89
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 92
    move-result-object v6

    .line 93
    if-eqz v6, :cond_94

    .line 95
    invoke-static {v5, p2, v4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    invoke-interface {p5, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 113
    goto :goto_94

    .line 114
    :cond_71
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 117
    move-result-object v6

    .line 118
    if-eqz v6, :cond_96

    .line 120
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 123
    move-result-object v6

    .line 124
    invoke-interface {p4, v6}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_82

    .line 130
    goto :goto_96

    .line 131
    :cond_82
    invoke-static {v5, p2, v4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v2

    .line 146
    invoke-interface {p5, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 149
    :cond_94
    :goto_94
    move-object v2, v0

    .line 150
    goto :goto_9a

    .line 151
    :cond_96
    :goto_96
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 154
    move-result-object v2

    .line 155
    :goto_9a
    if-nez v3, :cond_9e

    .line 157
    if-eqz v2, :cond_b7

    .line 159
    :cond_9e
    if-nez v1, :cond_af

    .line 161
    new-instance v1, Landroid/content/ClipData;

    .line 163
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 166
    move-result-object v4

    .line 167
    new-instance v5, Landroid/content/ClipData$Item;

    .line 169
    invoke-direct {v5, v3, v0, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 172
    invoke-direct {v1, v4, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 175
    goto :goto_b7

    .line 176
    :cond_af
    new-instance v4, Landroid/content/ClipData$Item;

    .line 178
    invoke-direct {v4, v3, v0, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 181
    invoke-virtual {v1, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 184
    :cond_b7
    :goto_b7
    add-int/lit8 p2, p2, 0x1

    .line 186
    goto/16 :goto_17

    .line 188
    :cond_bb
    if-eqz v1, :cond_c0

    .line 190
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 193
    :cond_c0
    :goto_c0
    return-void
.end method
