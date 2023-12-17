.class public Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;
.super Ljava/lang/Object;
.source "FabExpandView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/FabExpandView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInfo"
.end annotation


# instance fields
.field public downId:I

.field public isDownSelect:Z

.field public isUpSelect:Z

.field public title:Ljava/lang/String;

.field public upId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectId()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->upId:I

    .line 7
    return v0

    .line 8
    :cond_7
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    .line 10
    if-eqz v0, :cond_e

    .line 12
    iget v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->downId:I

    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, -0x1

    .line 16
    return v0
.end method

.method public isSelect()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method
