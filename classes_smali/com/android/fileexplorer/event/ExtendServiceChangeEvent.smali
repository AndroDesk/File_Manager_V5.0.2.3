.class public Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;
.super Ljava/lang/Object;
.source "ExtendServiceChangeEvent.java"


# instance fields
.field private mExtendServiceOpened:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;->mExtendServiceOpened:Z

    return-void
.end method


# virtual methods
.method public isExtendServiceOpened()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;->mExtendServiceOpened:Z

    return v0
.end method

.method public setExtendServiceOpened(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/event/ExtendServiceChangeEvent;->mExtendServiceOpened:Z

    return-void
.end method
