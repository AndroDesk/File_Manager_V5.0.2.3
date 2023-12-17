.class Lcom/android/fileexplorer/model/Util$Pos;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pos"
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/model/Util$Pos;->start:I

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/model/Util$Pos;->end:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/fileexplorer/model/Util$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/Util$Pos;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getEnd()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/Util$Pos;->end:I

    .line 3
    return v0
.end method

.method public getStart()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/Util$Pos;->start:I

    .line 3
    return v0
.end method
