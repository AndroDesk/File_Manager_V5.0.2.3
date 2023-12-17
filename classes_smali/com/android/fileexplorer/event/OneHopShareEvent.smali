.class public Lcom/android/fileexplorer/event/OneHopShareEvent;
.super Ljava/lang/Object;
.source "OneHopShareEvent.java"


# instance fields
.field public btMac:Ljava/lang/String;

.field public deviceType:I

.field private isSelectData:Z

.field public oneHopVersion:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->btMac:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->deviceType:I

    .line 8
    iput p3, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->oneHopVersion:I

    .line 10
    return-void
.end method


# virtual methods
.method public isSelectData()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->isSelectData:Z

    .line 3
    return v0
.end method

.method public setSelectData(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->isSelectData:Z

    .line 3
    return-void
.end method
