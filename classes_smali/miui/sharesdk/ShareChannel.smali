.class public final enum Lmiui/sharesdk/ShareChannel;
.super Ljava/lang/Enum;
.source "ShareChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/sharesdk/ShareChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_CONTACT:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_FAMILY:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_QR_CODE:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_SEARCH:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_SUGGESTION:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_WECHAT:Lmiui/sharesdk/ShareChannel;


# instance fields
.field public final serverTag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Lmiui/sharesdk/ShareChannel;

    .line 3
    const-string v1, "CHANNEL_FAMILY"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "FamilyShare"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_FAMILY:Lmiui/sharesdk/ShareChannel;

    .line 13
    new-instance v1, Lmiui/sharesdk/ShareChannel;

    .line 15
    const-string v3, "CHANNEL_SUGGESTION"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "Suggestion"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lmiui/sharesdk/ShareChannel;->CHANNEL_SUGGESTION:Lmiui/sharesdk/ShareChannel;

    .line 25
    new-instance v3, Lmiui/sharesdk/ShareChannel;

    .line 27
    const-string v5, "CHANNEL_CONTACT"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "Contact"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lmiui/sharesdk/ShareChannel;->CHANNEL_CONTACT:Lmiui/sharesdk/ShareChannel;

    .line 37
    new-instance v5, Lmiui/sharesdk/ShareChannel;

    .line 39
    const-string v7, "CHANNEL_WECHAT"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "WeChat"

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v5, Lmiui/sharesdk/ShareChannel;->CHANNEL_WECHAT:Lmiui/sharesdk/ShareChannel;

    .line 49
    new-instance v7, Lmiui/sharesdk/ShareChannel;

    .line 51
    const-string v9, "CHANNEL_QR_CODE"

    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "QrCode"

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sput-object v7, Lmiui/sharesdk/ShareChannel;->CHANNEL_QR_CODE:Lmiui/sharesdk/ShareChannel;

    .line 61
    new-instance v9, Lmiui/sharesdk/ShareChannel;

    .line 63
    const-string v11, "CHANNEL_SEARCH"

    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "Mid"

    .line 68
    invoke-direct {v9, v11, v12, v13}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    sput-object v9, Lmiui/sharesdk/ShareChannel;->CHANNEL_SEARCH:Lmiui/sharesdk/ShareChannel;

    .line 73
    const/4 v11, 0x6

    .line 74
    new-array v11, v11, [Lmiui/sharesdk/ShareChannel;

    .line 76
    aput-object v0, v11, v2

    .line 78
    aput-object v1, v11, v4

    .line 80
    aput-object v3, v11, v6

    .line 82
    aput-object v5, v11, v8

    .line 84
    aput-object v7, v11, v10

    .line 86
    aput-object v9, v11, v12

    .line 88
    sput-object v11, Lmiui/sharesdk/ShareChannel;->$VALUES:[Lmiui/sharesdk/ShareChannel;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static getShareChannelByServerTag(Ljava/lang/String;)Lmiui/sharesdk/ShareChannel;
    .registers 3

    .line 1
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_FAMILY:Lmiui/sharesdk/ShareChannel;

    .line 3
    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    .line 5
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    goto :goto_43

    .line 12
    :cond_b
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_SUGGESTION:Lmiui/sharesdk/ShareChannel;

    .line 14
    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    .line 16
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_16

    .line 22
    goto :goto_43

    .line 23
    :cond_16
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_CONTACT:Lmiui/sharesdk/ShareChannel;

    .line 25
    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    .line 27
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_21

    .line 33
    goto :goto_43

    .line 34
    :cond_21
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_WECHAT:Lmiui/sharesdk/ShareChannel;

    .line 36
    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    .line 38
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2c

    .line 44
    goto :goto_43

    .line 45
    :cond_2c
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_QR_CODE:Lmiui/sharesdk/ShareChannel;

    .line 47
    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    .line 49
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_37

    .line 55
    goto :goto_43

    .line 56
    :cond_37
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_SEARCH:Lmiui/sharesdk/ShareChannel;

    .line 58
    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    .line 60
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_42

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    const/4 v0, 0x0

    .line 68
    :goto_43
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/sharesdk/ShareChannel;
    .registers 2

    .line 1
    const-class v0, Lmiui/sharesdk/ShareChannel;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiui/sharesdk/ShareChannel;

    .line 9
    return-object p0
.end method

.method public static values()[Lmiui/sharesdk/ShareChannel;
    .registers 1

    .line 1
    sget-object v0, Lmiui/sharesdk/ShareChannel;->$VALUES:[Lmiui/sharesdk/ShareChannel;

    .line 3
    invoke-virtual {v0}, [Lmiui/sharesdk/ShareChannel;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lmiui/sharesdk/ShareChannel;

    .line 9
    return-object v0
.end method
