.class public Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;
.super Ljava/lang/Object;
.source "ExtendServiceChangeEvent.java"


# instance fields
.field private mExtendServiceOpened:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;->mExtendServiceOpened:Z

    .line 6
    return-void
.end method


# virtual methods
.method public isExtendServiceOpened()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;->mExtendServiceOpened:Z

    .line 3
    return v0
.end method

.method public setExtendServiceOpened(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;->mExtendServiceOpened:Z

    .line 3
    return-void
.end method
