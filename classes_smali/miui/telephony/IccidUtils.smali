.class public Lmiui/telephony/IccidUtils;
.super Ljava/lang/Object;
.source "IccidUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloudIdToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->parse(Ljava/lang/String;)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object v0

    iget v1, v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    iget-object p0, v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    iget v0, v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    invoke-direct {v1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object p0

    :cond_24
    return-object p0
.end method

.method public static iccidToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :cond_c
    return-object p0
.end method
