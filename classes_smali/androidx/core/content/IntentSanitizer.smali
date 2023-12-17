.class public Landroidx/core/content/IntentSanitizer;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/IntentSanitizer$Api16Impl;,
        Landroidx/core/content/IntentSanitizer$Api29Impl;,
        Landroidx/core/content/IntentSanitizer$Api15Impl;,
        Landroidx/core/content/IntentSanitizer$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentSanitizer"


# instance fields
.field private mAllowAnyComponent:Z

.field private mAllowClipDataText:Z

.field private mAllowIdentifier:Z

.field private mAllowSelector:Z

.field private mAllowSourceBounds:Z

.field private mAllowedActions:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedCategories:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipData:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipDataUri:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedComponents:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedData:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ll0/f<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAllowedFlags:I

.field private mAllowedPackages:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedTypes:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/core/content/IntentSanitizer$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/core/content/IntentSanitizer;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer;->lambda$sanitizeByThrowing$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1002(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowClipDataText:Z

    .line 3
    return p1
.end method

.method public static synthetic access$102(Landroidx/core/content/IntentSanitizer;I)I
    .registers 2

    .line 1
    iput p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    .line 3
    return p1
.end method

.method public static synthetic access$1102(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipDataUri:Ll0/f;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1202(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipData:Ll0/f;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1302(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowIdentifier:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1402(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowSelector:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1502(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowSourceBounds:Z

    .line 3
    return p1
.end method

.method public static synthetic access$202(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedActions:Ll0/f;

    .line 3
    return-object p1
.end method

.method public static synthetic access$302(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedData:Ll0/f;

    .line 3
    return-object p1
.end method

.method public static synthetic access$402(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedTypes:Ll0/f;

    .line 3
    return-object p1
.end method

.method public static synthetic access$502(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedCategories:Ll0/f;

    .line 3
    return-object p1
.end method

.method public static synthetic access$602(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedPackages:Ll0/f;

    .line 3
    return-object p1
.end method

.method public static synthetic access$702(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowAnyComponent:Z

    .line 3
    return p1
.end method

.method public static synthetic access$802(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedComponents:Ll0/f;

    .line 3
    return-object p1
.end method

.method public static synthetic access$902(Landroidx/core/content/IntentSanitizer;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedExtras:Ljava/util/Map;

    .line 3
    return-object p1
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer;->lambda$sanitizeByFiltering$0(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$sanitizeByFiltering$0(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private static synthetic lambda$sanitizeByThrowing$1(Ljava/lang/String;)V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/SecurityException;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 6
    throw v0
.end method

.method private putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 1
    if-nez p3, :cond_b

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    move-result-object p1

    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    goto :goto_28

    .line 12
    :cond_b
    instance-of v0, p3, Landroid/os/Parcelable;

    .line 14
    if-eqz v0, :cond_15

    .line 16
    check-cast p3, Landroid/os/Parcelable;

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    goto :goto_28

    .line 22
    :cond_15
    instance-of v0, p3, [Landroid/os/Parcelable;

    .line 24
    if-eqz v0, :cond_1f

    .line 26
    check-cast p3, [Landroid/os/Parcelable;

    .line 28
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    goto :goto_28

    .line 32
    :cond_1f
    instance-of v0, p3, Ljava/io/Serializable;

    .line 34
    if-eqz v0, :cond_29

    .line 36
    check-cast p3, Ljava/io/Serializable;

    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    :goto_28
    return-void

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p2, "Unsupported type "

    .line 46
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1
.end method


# virtual methods
.method public sanitize(Landroid/content/Intent;Ll0/a;)Landroid/content/Intent;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ll0/a<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroid/content/Intent;

    .line 3
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowAnyComponent:Z

    .line 12
    if-eqz v1, :cond_f

    .line 14
    if-eqz v0, :cond_17

    .line 16
    :cond_f
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedComponents:Ll0/f;

    .line 18
    invoke-interface {v1, v0}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1b

    .line 24
    :cond_17
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 27
    goto :goto_3b

    .line 28
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v2, "Component is not allowed: "

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    .line 50
    const-string v1, "android"

    .line 52
    const-string v2, "java.lang.Void"

    .line 54
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    :goto_3b
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_5f

    .line 66
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedPackages:Ll0/f;

    .line 68
    invoke-interface {v1, v0}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4a

    .line 74
    goto :goto_5f

    .line 75
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v2, "Package is not allowed: "

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 95
    goto :goto_62

    .line 96
    :cond_5f
    :goto_5f
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :goto_62
    iget v0, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 104
    move-result v1

    .line 105
    or-int/2addr v0, v1

    .line 106
    iget v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    .line 108
    if-ne v0, v1, :cond_75

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 113
    move-result v0

    .line 114
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    goto :goto_9d

    .line 118
    :cond_75
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 121
    move-result v0

    .line 122
    and-int/2addr v0, v1

    .line 123
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    const-string v1, "The intent contains flags that are not allowed: 0x"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 139
    move-result v1

    .line 140
    iget v2, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    .line 142
    not-int v2, v2

    .line 143
    and-int/2addr v1, v2

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 158
    :goto_9d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_c1

    .line 164
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedActions:Ll0/f;

    .line 166
    invoke-interface {v1, v0}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_ac

    .line 172
    goto :goto_c1

    .line 173
    :cond_ac
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v2, "Action is not allowed: "

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 190
    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 193
    goto :goto_c4

    .line 194
    :cond_c1
    :goto_c1
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :goto_c4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_e8

    .line 203
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedData:Ll0/f;

    .line 205
    invoke-interface {v1, v0}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_d3

    .line 211
    goto :goto_e8

    .line 212
    :cond_d3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v2, "Data is not allowed: "

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 229
    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 232
    goto :goto_eb

    .line 233
    :cond_e8
    :goto_e8
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 236
    :goto_eb
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 239
    move-result-object v0

    .line 240
    if-eqz v0, :cond_10f

    .line 242
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedTypes:Ll0/f;

    .line 244
    invoke-interface {v1, v0}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_fa

    .line 250
    goto :goto_10f

    .line 251
    :cond_fa
    new-instance v1, Ljava/lang/StringBuilder;

    .line 253
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    const-string v2, "Type is not allowed: "

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object v0

    .line 268
    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 271
    goto :goto_116

    .line 272
    :cond_10f
    :goto_10f
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    :goto_116
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 282
    move-result-object v0

    .line 283
    if-eqz v0, :cond_14d

    .line 285
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 288
    move-result-object v0

    .line 289
    :goto_120
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_14d

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    move-result-object v1

    .line 299
    check-cast v1, Ljava/lang/String;

    .line 301
    iget-object v2, p0, Landroidx/core/content/IntentSanitizer;->mAllowedCategories:Ll0/f;

    .line 303
    invoke-interface {v2, v1}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_138

    .line 309
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    goto :goto_120

    .line 313
    :cond_138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    const-string v3, "Category is not allowed: "

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v1

    .line 330
    invoke-interface {p2, v1}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 333
    goto :goto_120

    .line 334
    :cond_14d
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 337
    move-result-object v0

    .line 338
    if-eqz v0, :cond_1c5

    .line 340
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 343
    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 347
    move-result-object v1

    .line 348
    :goto_15b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    move-result v2

    .line 352
    if-eqz v2, :cond_1c5

    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    move-result-object v2

    .line 358
    check-cast v2, Ljava/lang/String;

    .line 360
    const-string v3, "android.intent.extra.STREAM"

    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_17b

    .line 368
    iget v3, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    .line 370
    and-int/lit8 v3, v3, 0x1

    .line 372
    if-nez v3, :cond_17b

    .line 374
    const-string v2, "Allowing Extra Stream requires also allowing at least  FLAG_GRANT_READ_URI_PERMISSION Flag."

    .line 376
    invoke-interface {p2, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 379
    goto :goto_15b

    .line 380
    :cond_17b
    const-string v3, "output"

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    move-result v3

    .line 386
    if-eqz v3, :cond_190

    .line 388
    iget v3, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    .line 390
    not-int v3, v3

    .line 391
    and-int/lit8 v3, v3, 0x3

    .line 393
    if-eqz v3, :cond_190

    .line 395
    const-string v2, "Allowing Extra Output requires also allowing FLAG_GRANT_READ_URI_PERMISSION and FLAG_GRANT_WRITE_URI_PERMISSION Flags."

    .line 397
    invoke-interface {p2, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 400
    goto :goto_15b

    .line 401
    :cond_190
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    move-result-object v3

    .line 405
    iget-object v4, p0, Landroidx/core/content/IntentSanitizer;->mAllowedExtras:Ljava/util/Map;

    .line 407
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-result-object v4

    .line 411
    check-cast v4, Ll0/f;

    .line 413
    if-eqz v4, :cond_1a8

    .line 415
    invoke-interface {v4, v3}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_1a8

    .line 421
    invoke-direct {p0, v6, v2, v3}, Landroidx/core/content/IntentSanitizer;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    goto :goto_15b

    .line 425
    :cond_1a8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 427
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    const-string v5, "Extra is not allowed. Key: "

    .line 432
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v2, ". Value: "

    .line 440
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object v2

    .line 450
    invoke-interface {p2, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 453
    goto :goto_15b

    .line 454
    :cond_1c5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 456
    iget-object v2, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipData:Ll0/f;

    .line 458
    iget-boolean v3, p0, Landroidx/core/content/IntentSanitizer;->mAllowClipDataText:Z

    .line 460
    iget-object v4, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipDataUri:Ll0/f;

    .line 462
    move-object v0, p1

    .line 463
    move-object v1, v6

    .line 464
    move-object v5, p2

    .line 465
    invoke-static/range {v0 .. v5}, Landroidx/core/content/IntentSanitizer$Api16Impl;->sanitizeClipData(Landroid/content/Intent;Landroid/content/Intent;Ll0/f;ZLl0/f;Ll0/a;)V

    .line 468
    const/16 v0, 0x1d

    .line 470
    if-lt v7, v0, :cond_1fd

    .line 472
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer;->mAllowIdentifier:Z

    .line 474
    if-eqz v0, :cond_1e3

    .line 476
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->getIdentifier(Landroid/content/Intent;)Ljava/lang/String;

    .line 479
    move-result-object v0

    .line 480
    invoke-static {v6, v0}, Landroidx/core/content/IntentSanitizer$Api29Impl;->setIdentifier(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    goto :goto_1fd

    .line 484
    :cond_1e3
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->getIdentifier(Landroid/content/Intent;)Ljava/lang/String;

    .line 487
    move-result-object v0

    .line 488
    if-eqz v0, :cond_1fd

    .line 490
    const-string v0, "Identifier is not allowed: "

    .line 492
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    move-result-object v0

    .line 496
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->getIdentifier(Landroid/content/Intent;)Ljava/lang/String;

    .line 499
    move-result-object v1

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    move-result-object v0

    .line 507
    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 510
    :cond_1fd
    :goto_1fd
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer;->mAllowSelector:Z

    .line 512
    if-eqz v0, :cond_209

    .line 514
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api15Impl;->getSelector(Landroid/content/Intent;)Landroid/content/Intent;

    .line 517
    move-result-object v0

    .line 518
    invoke-static {v6, v0}, Landroidx/core/content/IntentSanitizer$Api15Impl;->setSelector(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 521
    goto :goto_223

    .line 522
    :cond_209
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api15Impl;->getSelector(Landroid/content/Intent;)Landroid/content/Intent;

    .line 525
    move-result-object v0

    .line 526
    if-eqz v0, :cond_223

    .line 528
    const-string v0, "Selector is not allowed: "

    .line 530
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    move-result-object v0

    .line 534
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api15Impl;->getSelector(Landroid/content/Intent;)Landroid/content/Intent;

    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    move-result-object v0

    .line 545
    invoke-interface {p2, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 548
    :cond_223
    :goto_223
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer;->mAllowSourceBounds:Z

    .line 550
    if-eqz v0, :cond_22f

    .line 552
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    .line 555
    move-result-object p1

    .line 556
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 559
    goto :goto_249

    .line 560
    :cond_22f
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    .line 563
    move-result-object v0

    .line 564
    if-eqz v0, :cond_249

    .line 566
    const-string v0, "SourceBounds is not allowed: "

    .line 568
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    move-result-object v0

    .line 572
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    .line 575
    move-result-object p1

    .line 576
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    move-result-object p1

    .line 583
    invoke-interface {p2, p1}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 586
    :cond_249
    :goto_249
    return-object v6
.end method

.method public sanitizeByFiltering(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroidx/core/content/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/core/content/b;-><init>(I)V

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/core/content/IntentSanitizer;->sanitize(Landroid/content/Intent;Ll0/a;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public sanitizeByThrowing(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroidx/core/content/b;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/core/content/b;-><init>(I)V

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/core/content/IntentSanitizer;->sanitize(Landroid/content/Intent;Ll0/a;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
