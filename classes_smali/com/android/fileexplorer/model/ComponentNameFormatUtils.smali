.class public Lcom/android/fileexplorer/model/ComponentNameFormatUtils;
.super Ljava/lang/Object;
.source "ComponentNameFormatUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFileName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3d

    .line 8
    const-string v0, ".shortcut"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    goto :goto_3d

    .line 17
    :cond_10
    :try_start_10
    const-string v0, "utf-8"

    .line 19
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_3d

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    return-object v1

    .line 30
    :cond_1d
    const/16 v0, 0x2e

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    const-string v0, "/"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    array-length v0, p0

    .line 48
    const/4 v3, 0x2

    .line 49
    if-lt v0, v3, :cond_3d

    .line 51
    new-instance v0, Landroid/content/ComponentName;

    .line 53
    aget-object v1, p0, v2

    .line 55
    const/4 v2, 0x1

    .line 56
    aget-object p0, p0, v2

    .line 58
    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v0

    .line 62
    :catch_3d
    :cond_3d
    :goto_3d
    return-object v1
.end method
