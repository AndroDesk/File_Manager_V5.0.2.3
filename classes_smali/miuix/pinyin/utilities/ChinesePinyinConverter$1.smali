.class Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;
.super Lmiuix/core/util/SoftReferenceSingleton;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pinyin/utilities/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/SoftReferenceSingleton<",
        "Lmiuix/pinyin/utilities/ChinesePinyinConverter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/SoftReferenceSingleton;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;->createInstance(Ljava/lang/Object;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/lang/Object;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;
    .registers 4

    .line 2
    new-instance v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;-><init>(Landroid/content/Context;Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V

    return-object v0
.end method
