.class public Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pinyin/utilities/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final HINDI:I = 0x4

.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field private static final SEPARATOR:C = ' '

.field public static final UNKNOWN:I = 0x3


# instance fields
.field public polyPhones:[Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    .line 4
    iput-object p2, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    return-void
.end method
