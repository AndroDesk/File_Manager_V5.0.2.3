.class public Lmiuix/module/Dependency$Level;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/module/Dependency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Level"
.end annotation


# instance fields
.field private maxLevel:I

.field private minLevel:I

.field private targetLevel:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLevel()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/module/Dependency$Level;->maxLevel:I

    .line 3
    return v0
.end method

.method public getMinLevel()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/module/Dependency$Level;->minLevel:I

    .line 3
    return v0
.end method

.method public getTargetLevel()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/module/Dependency$Level;->targetLevel:I

    .line 3
    return v0
.end method

.method public setMaxLevel(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/module/Dependency$Level;->maxLevel:I

    .line 3
    return-void
.end method

.method public setMinLevel(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/module/Dependency$Level;->minLevel:I

    .line 3
    return-void
.end method

.method public setTargetLevel(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/module/Dependency$Level;->targetLevel:I

    .line 3
    return-void
.end method
