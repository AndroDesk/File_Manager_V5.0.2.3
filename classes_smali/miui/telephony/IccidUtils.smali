.class public Lmiui/telephony/IccidUtils;
.super Ljava/lang/Object;
.source "IccidUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloudIdToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->parse(Ljava/lang/String;)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 12
    move-result-object v0

    .line 13
    iget v1, v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_24

    .line 18
    iget-object p0, v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    .line 20
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    new-instance v1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 28
    iget v0, v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    .line 30
    invoke-direct {v1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    :cond_24
    return-object p0
.end method

.method public static iccidToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    :cond_c
    return-object p0
.end method
