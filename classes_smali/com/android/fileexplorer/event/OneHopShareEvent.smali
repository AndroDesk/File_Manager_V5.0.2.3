.class public Lcom/android/fileexplorer/event/OneHopShareEvent;
.super Ljava/lang/Object;
.source "OneHopShareEvent.java"


# instance fields
.field public btMac:Ljava/lang/String;

.field public deviceType:I

.field private isSelectData:Z

.field public oneHopVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->btMac:Ljava/lang/String;

    iput p1, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->deviceType:I

    iput p3, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->oneHopVersion:I

    return-void
.end method


# virtual methods
.method public isSelectData()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->isSelectData:Z

    return v0
.end method

.method public setSelectData(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/OneHopShareEvent;->isSelectData:Z

    return-void
.end method
