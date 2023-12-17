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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectId()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->upId:I

    return v0

    :cond_7
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->downId:I

    return v0

    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method public isSelect()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
