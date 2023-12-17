.class final enum Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;
.super Ljava/lang/Enum;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Architecture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARM64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARMV6:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARMV7:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARMV7S:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARM_UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum PPC:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum PPC64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum X86_32:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum X86_64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field private static final matcher:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 3
    const-string v1, "X86_32"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->X86_32:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 11
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 13
    const-string v3, "X86_64"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->X86_64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 21
    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 23
    const-string v5, "ARM_UNKNOWN"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARM_UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 31
    new-instance v5, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 33
    const-string v7, "PPC"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->PPC:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 41
    new-instance v7, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 43
    const-string v9, "PPC64"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->PPC64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 51
    new-instance v9, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 53
    const-string v11, "ARMV6"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARMV6:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 61
    new-instance v11, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 63
    const-string v13, "ARMV7"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARMV7:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 71
    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 73
    const-string v15, "UNKNOWN"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 81
    new-instance v15, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 83
    const-string v14, "ARMV7S"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARMV7S:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 92
    new-instance v14, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 94
    const-string v12, "ARM64"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARM64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 103
    const/16 v12, 0xa

    .line 105
    new-array v12, v12, [Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 107
    aput-object v0, v12, v2

    .line 109
    aput-object v1, v12, v4

    .line 111
    aput-object v3, v12, v6

    .line 113
    aput-object v5, v12, v8

    .line 115
    const/4 v1, 0x4

    .line 116
    aput-object v7, v12, v1

    .line 118
    const/4 v2, 0x5

    .line 119
    aput-object v9, v12, v2

    .line 121
    const/4 v2, 0x6

    .line 122
    aput-object v11, v12, v2

    .line 124
    const/4 v2, 0x7

    .line 125
    aput-object v13, v12, v2

    .line 127
    const/16 v2, 0x8

    .line 129
    aput-object v15, v12, v2

    .line 131
    aput-object v14, v12, v10

    .line 133
    sput-object v12, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 135
    new-instance v2, Ljava/util/HashMap;

    .line 137
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 140
    sput-object v2, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->matcher:Ljava/util/Map;

    .line 142
    const-string v1, "armeabi-v7a"

    .line 144
    invoke-interface {v2, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "armeabi"

    .line 149
    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "arm64-v8a"

    .line 154
    invoke-interface {v2, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "x86"

    .line 159
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static getValue()Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_14

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 20
    return-object v0

    .line 21
    :cond_14
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->matcher:Ljava/util/Map;

    .line 29
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 35
    if-nez v0, :cond_26

    .line 37
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 39
    :cond_26
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;
    .registers 2

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 3
    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 9
    return-object v0
.end method
