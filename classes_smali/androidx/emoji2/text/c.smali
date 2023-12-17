.class public final Landroidx/emoji2/text/c;
.super Ljava/lang/Object;
.source "DefaultEmojiCompatConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/c$c;,
        Landroidx/emoji2/text/c$b;,
        Landroidx/emoji2/text/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Landroidx/emoji2/text/l;
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_c

    .line 7
    new-instance v0, Landroidx/emoji2/text/c$c;

    .line 9
    invoke-direct {v0}, Landroidx/emoji2/text/c$c;-><init>()V

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    new-instance v0, Landroidx/emoji2/text/c$b;

    .line 15
    invoke-direct {v0}, Landroidx/emoji2/text/c$b;-><init>()V

    .line 18
    :goto_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Package manager required to locate emoji font provider"

    .line 24
    invoke-static {v1, v2}, La/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v2, Landroid/content/Intent;

    .line 29
    const-string v3, "androidx.content.action.LOAD_EMOJI_FONT"

    .line 31
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v2

    .line 43
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz v4, :cond_4a

    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 56
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 58
    const/4 v6, 0x1

    .line 59
    if-eqz v4, :cond_46

    .line 61
    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    if-eqz v7, :cond_46

    .line 65
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 67
    and-int/2addr v7, v6

    .line 68
    if-ne v7, v6, :cond_46

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v6, v3

    .line 72
    :goto_47
    if-eqz v6, :cond_2a

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move-object v4, v5

    .line 76
    :goto_4b
    if-nez v4, :cond_4e

    .line 78
    goto :goto_7c

    .line 79
    :cond_4e
    :try_start_4e
    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 81
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1, v4}, Landroidx/emoji2/text/c$a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    array-length v6, v0

    .line 93
    :goto_5c
    if-ge v3, v6, :cond_6a

    .line 95
    aget-object v7, v0, v3

    .line 97
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_5c

    .line 107
    :cond_6a
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    move-result-object v0

    .line 111
    new-instance v1, Lj0/f;

    .line 113
    const-string v3, "emojicompat-emoji-font"

    .line 115
    invoke-direct {v1, v2, v4, v3, v0}, Lj0/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_75
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4e .. :try_end_75} :catch_76

    .line 118
    goto :goto_7d

    .line 119
    :catch_76
    move-exception v0

    .line 120
    const-string v1, "emoji2.text.DefaultEmojiConfig"

    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :goto_7c
    move-object v1, v5

    .line 126
    :goto_7d
    if-nez v1, :cond_80

    .line 128
    goto :goto_85

    .line 129
    :cond_80
    new-instance v5, Landroidx/emoji2/text/l;

    .line 131
    invoke-direct {v5, p0, v1}, Landroidx/emoji2/text/l;-><init>(Landroid/content/Context;Lj0/f;)V

    .line 134
    :goto_85
    return-object v5
.end method
