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

    new-instance v0, Lmiui/sharesdk/ShareChannel;

    const-string v1, "CHANNEL_FAMILY"

    const/4 v2, 0x0

    const-string v3, "FamilyShare"

    invoke-direct {v0, v1, v2, v3}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_FAMILY:Lmiui/sharesdk/ShareChannel;

    new-instance v1, Lmiui/sharesdk/ShareChannel;

    const-string v3, "CHANNEL_SUGGESTION"

    const/4 v4, 0x1

    const-string v5, "Suggestion"

    invoke-direct {v1, v3, v4, v5}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lmiui/sharesdk/ShareChannel;->CHANNEL_SUGGESTION:Lmiui/sharesdk/ShareChannel;

    new-instance v3, Lmiui/sharesdk/ShareChannel;

    const-string v5, "CHANNEL_CONTACT"

    const/4 v6, 0x2

    const-string v7, "Contact"

    invoke-direct {v3, v5, v6, v7}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lmiui/sharesdk/ShareChannel;->CHANNEL_CONTACT:Lmiui/sharesdk/ShareChannel;

    new-instance v5, Lmiui/sharesdk/ShareChannel;

    const-string v7, "CHANNEL_WECHAT"

    const/4 v8, 0x3

    const-string v9, "WeChat"

    invoke-direct {v5, v7, v8, v9}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lmiui/sharesdk/ShareChannel;->CHANNEL_WECHAT:Lmiui/sharesdk/ShareChannel;

    new-instance v7, Lmiui/sharesdk/ShareChannel;

    const-string v9, "CHANNEL_QR_CODE"

    const/4 v10, 0x4

    const-string v11, "QrCode"

    invoke-direct {v7, v9, v10, v11}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lmiui/sharesdk/ShareChannel;->CHANNEL_QR_CODE:Lmiui/sharesdk/ShareChannel;

    new-instance v9, Lmiui/sharesdk/ShareChannel;

    const-string v11, "CHANNEL_SEARCH"

    const/4 v12, 0x5

    const-string v13, "Mid"

    invoke-direct {v9, v11, v12, v13}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lmiui/sharesdk/ShareChannel;->CHANNEL_SEARCH:Lmiui/sharesdk/ShareChannel;

    const/4 v11, 0x6

    new-array v11, v11, [Lmiui/sharesdk/ShareChannel;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lmiui/sharesdk/ShareChannel;->$VALUES:[Lmiui/sharesdk/ShareChannel;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    return-void
.end method

.method public static getShareChannelByServerTag(Ljava/lang/String;)Lmiui/sharesdk/ShareChannel;
    .registers 3

    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_FAMILY:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_43

    :cond_b
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_SUGGESTION:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_43

    :cond_16
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_CONTACT:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_43

    :cond_21
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_WECHAT:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_43

    :cond_2c
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_QR_CODE:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_43

    :cond_37
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_SEARCH:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/sharesdk/ShareChannel;
    .registers 2

    const-class v0, Lmiui/sharesdk/ShareChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/sharesdk/ShareChannel;

    return-object p0
.end method

.method public static values()[Lmiui/sharesdk/ShareChannel;
    .registers 1

    sget-object v0, Lmiui/sharesdk/ShareChannel;->$VALUES:[Lmiui/sharesdk/ShareChannel;

    invoke-virtual {v0}, [Lmiui/sharesdk/ShareChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/sharesdk/ShareChannel;

    return-object v0
.end method
