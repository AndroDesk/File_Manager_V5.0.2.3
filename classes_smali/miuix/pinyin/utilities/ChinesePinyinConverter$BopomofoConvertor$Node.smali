.class Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field public ch:C

.field public children:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

.field public next:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

.field public output:Ljava/lang/String;

.field public specials:Z


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

.method public synthetic constructor <init>(Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;-><init>()V

    return-void
.end method
