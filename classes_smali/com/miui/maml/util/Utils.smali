.class public Lcom/miui/maml/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/Utils$XmlTraverseListener;,
        Lcom/miui/maml/util/Utils$Point;,
        Lcom/miui/maml/util/Utils$GetChildWrapper;
    }
.end annotation


# static fields
.field private static INTENT_BLACK_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID:I = -0x2

.field private static sAcrossUsersFullPermission:I = -0x2

.field private static sAcrossUsersPermission:I = -0x2

.field private static sAppContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 8
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 15
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 22
    const-string v1, "android.intent.action.BATTERY_LOW"

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 29
    const-string v1, "android.intent.action.BATTERY_OKAY"

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 36
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 43
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 50
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 57
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 64
    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 71
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 78
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 85
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 92
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 99
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 106
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 113
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 120
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 127
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 134
    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 141
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 148
    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 155
    const-string v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 162
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 169
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 176
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 183
    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 190
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 192
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 197
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 204
    const-string v1, "android.intent.action.REBOOT"

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 211
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 213
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 218
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 225
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 227
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 232
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 239
    const-string v1, "android.intent.action.TIME_TICK"

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 246
    const-string v1, "android.intent.action.UID_REMOVED"

    .line 248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 253
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 255
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 3
    iget-wide v2, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 5
    sub-double/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 8
    iget-wide p0, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 10
    sub-double/2addr v2, p0

    .line 11
    if-eqz p2, :cond_14

    .line 13
    mul-double/2addr v0, v0

    .line 14
    mul-double/2addr v2, v2

    .line 15
    add-double/2addr v2, v0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    move-result-wide p0

    .line 20
    return-wide p0

    .line 21
    :cond_14
    mul-double/2addr v0, v0

    .line 22
    mul-double/2addr v2, v2

    .line 23
    add-double/2addr v2, v0

    .line 24
    return-wide v2
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "_"

    .line 4
    invoke-static {p0, v0, p1}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-object p0

    .line 2
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static arrContains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_12

    .line 6
    aget-object v3, p0, v2

    .line 8
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_f

    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_3

    .line 19
    :cond_12
    return v1
.end method

.method public static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_12

    .line 6
    aget-object v3, p0, v2

    .line 8
    invoke-static {v3, p1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_f

    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_3

    .line 19
    :cond_12
    return v1
.end method

.method public static asserts(Z)V
    .registers 2

    const-string v0, "assert error"

    .line 1
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 2
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string p1, ".0"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_17

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x2

    .line 20
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    :cond_17
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 1
    if-eq p0, p1, :cond_e

    .line 3
    if-nez p0, :cond_5

    .line 5
    goto :goto_c

    .line 6
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_c

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    :goto_c
    const/4 p0, 0x0

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    :goto_e
    const/4 p0, 0x1

    .line 16
    :goto_f
    return p0
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/util/Utils;->sAppContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public static getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_f

    .line 11
    :try_start_a
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 14
    move-result p0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    return p0

    .line 16
    :catch_f
    :cond_f
    return p2
.end method

.method public static getAttrAsFloatThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)F
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_f

    .line 11
    :try_start_a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    move-result p0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    return p0

    .line 16
    :catch_f
    :cond_f
    return p2
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .registers 4

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_f

    .line 11
    :try_start_a
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 14
    move-result-wide p0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    return-wide p0

    .line 16
    :catch_f
    :cond_f
    return-wide p2
.end method

.method public static getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_2a

    .line 16
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne v3, v4, :cond_27

    .line 27
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_27

    .line 37
    check-cast v2, Lorg/w3c/dom/Element;

    .line 39
    return-object v2

    .line 40
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_9

    .line 43
    :cond_2a
    return-object v0
.end method

.method public static getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 7

    .line 7
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 8
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 9
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_12

    move-object p1, v3

    goto :goto_15

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    :goto_15
    return-object p1
.end method

.method public static getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .registers 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 3
    :cond_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 4
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object v0, v4

    goto :goto_24

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_24
    :goto_24
    return-object v0
.end method

.method public static getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static getVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static initContextIfNeed(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/miui/maml/util/Utils;->sAppContext:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_6

    .line 5
    sput-object p0, Lcom/miui/maml/util/Utils;->sAppContext:Landroid/content/Context;

    .line 7
    :cond_6
    return-void
.end method

.method public static isProtectedIntent(Ljava/lang/String;)Z
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_e

    .line 5
    :cond_4
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    :goto_e
    return p0
.end method

.method public static mixAlpha(II)I
    .registers 3

    .line 1
    const/16 v0, 0xff

    .line 3
    if-lt p0, v0, :cond_6

    .line 5
    move p0, p1

    .line 6
    goto :goto_12

    .line 7
    :cond_6
    if-lt p1, v0, :cond_9

    .line 9
    goto :goto_12

    .line 10
    :cond_9
    mul-int/2addr p0, p1

    .line 11
    int-to-float p0, p0

    .line 12
    const/high16 p1, 0x437f0000  # 255.0f

    .line 14
    div-float/2addr p0, p1

    .line 15
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 18
    move-result p0

    .line 19
    :goto_12
    const/4 p1, 0x0

    .line 20
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result p0

    .line 24
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, ".0"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_17

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, -0x2

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    :cond_17
    return-object p0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 3

    .line 1
    const-string v0, "+"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-le v0, v1, :cond_13

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    :cond_13
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 23
    move-result-wide v0

    .line 24
    return-wide v0
.end method

.method public static pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;
    .registers 11

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/util/Utils$Point;->minus(Lcom/miui/maml/util/Utils$Point;)Lcom/miui/maml/util/Utils$Point;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, p0}, Lcom/miui/maml/util/Utils$Point;->minus(Lcom/miui/maml/util/Utils$Point;)Lcom/miui/maml/util/Utils$Point;

    .line 8
    move-result-object p2

    .line 9
    iget-wide v1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 11
    iget-wide v3, p2, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 13
    mul-double/2addr v1, v3

    .line 14
    iget-wide v3, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 16
    iget-wide v5, p2, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 18
    mul-double/2addr v3, v5

    .line 19
    add-double/2addr v3, v1

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 24
    move-result-wide v1

    .line 25
    div-double/2addr v3, v1

    .line 26
    const-wide/16 v1, 0x0

    .line 28
    cmpg-double p2, v3, v1

    .line 30
    if-ltz p2, :cond_34

    .line 32
    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    .line 34
    cmpl-double v1, v3, v1

    .line 36
    if-lez v1, :cond_26

    .line 38
    goto :goto_34

    .line 39
    :cond_26
    iget-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 41
    mul-double/2addr p1, v3

    .line 42
    iput-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 44
    iget-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 46
    mul-double/2addr p1, v3

    .line 47
    iput-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 49
    invoke-virtual {v0, p0}, Lcom/miui/maml/util/Utils$Point;->Offset(Lcom/miui/maml/util/Utils$Point;)V

    .line 52
    return-object v0

    .line 53
    :cond_34
    :goto_34
    if-nez p3, :cond_38

    .line 55
    const/4 p0, 0x0

    .line 56
    goto :goto_3c

    .line 57
    :cond_38
    if-gez p2, :cond_3b

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move-object p0, p1

    .line 61
    :goto_3c
    return-object p0
.end method

.method public static putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V
    .registers 4

    .line 2
    invoke-virtual {p1, p0, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public static putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/Double;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 3
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_d

    .line 6
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 12
    sput v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 14
    :cond_d
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 16
    if-nez v0, :cond_19

    .line 18
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_CURRENT()Landroid/os/UserHandle;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    :goto_1c
    return-void
.end method

.method public static splitByteArray(Ljava/lang/String;)[B
    .registers 2

    const/16 v0, 0xa

    .line 1
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->splitByteArray(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static splitByteArray(Ljava/lang/String;I)[B
    .registers 6

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, ","

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v0, p0

    .line 5
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_1f

    .line 6
    :try_start_14
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v3

    aput-byte v3, v1, v2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1c} :catch_1c

    :catch_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1f
    return-object v1
.end method

.method public static splitDoubleArray(Ljava/lang/String;)[D
    .registers 6

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
    const-string v0, ","

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    array-length v0, p0

    .line 16
    new-array v1, v0, [D

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_12
    if-ge v2, v0, :cond_1f

    .line 21
    :try_start_14
    aget-object v3, p0, v2

    .line 23
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 26
    move-result-wide v3

    .line 27
    aput-wide v3, v1, v2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1c} :catch_1c

    .line 29
    :catch_1c
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_12

    .line 32
    :cond_1f
    return-object v1
.end method

.method public static splitIntArray(Ljava/lang/String;)[I
    .registers 2

    const/16 v0, 0xa

    .line 1
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->splitIntArray(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public static splitIntArray(Ljava/lang/String;I)[I
    .registers 6

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, ","

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v0, p0

    .line 5
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_1f

    .line 6
    :try_start_14
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1c} :catch_1c

    :catch_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1f
    return-object v1
.end method

.method public static splitStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

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
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersFullPermission:I

    .line 3
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_d

    .line 6
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 12
    sput v0, Lcom/miui/maml/util/Utils;->sAcrossUsersFullPermission:I

    .line 14
    :cond_d
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersFullPermission:I

    .line 16
    if-nez v0, :cond_19

    .line 18
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_CURRENT()Landroid/os/UserHandle;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, p1, p2, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 29
    :goto_1c
    return-void
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 3
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_d

    .line 6
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 12
    sput v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 14
    :cond_d
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 16
    if-nez v0, :cond_19

    .line 18
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_CURRENT()Landroid/os/UserHandle;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, p1, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    :goto_1c
    return-void
.end method

.method public static stringToDouble(Ljava/lang/String;D)D
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-wide p1

    .line 4
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 7
    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    .line 8
    return-wide p0

    .line 9
    :catch_8
    return-wide p1
.end method

.method public static traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V
    .registers 7

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_2a

    .line 12
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v2, v3, :cond_27

    .line 23
    if-eqz p1, :cond_22

    .line 25
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_27

    .line 35
    :cond_22
    check-cast v1, Lorg/w3c/dom/Element;

    .line 37
    invoke-interface {p2, v1}, Lcom/miui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    .line 40
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_5

    .line 43
    :cond_2a
    return-void
.end method

.method public static traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V
    .registers 8

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_2a

    .line 12
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne v3, v4, :cond_27

    .line 27
    if-eqz p1, :cond_22

    .line 29
    invoke-static {p1, v2}, Lcom/miui/maml/util/Utils;->arrContains([Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_27

    .line 35
    :cond_22
    check-cast v1, Lorg/w3c/dom/Element;

    .line 37
    invoke-interface {p2, v1}, Lcom/miui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    .line 40
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_5

    .line 43
    :cond_2a
    return-void
.end method

.method public static triggerGC()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 15
    return-void
.end method
