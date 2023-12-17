.class public Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;
.super Ljava/lang/Object;
.source "CategoryEntryClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryEntryClickListener"


# instance fields
.field private mListener:Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;->mListener:Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0a00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    const-string v2, "CategoryEntryClickListener"

    if-nez v1, :cond_13

    const-string p1, "tag error!"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    if-nez v0, :cond_21

    const-string p1, "category is null"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    iget-object v1, p0, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;->mListener:Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;

    if-eqz v1, :cond_28

    invoke-interface {v1, v0}, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;->onClickEntry(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V

    :cond_28
    const v0, 0x7f0a00c9

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0a00c8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickLabel(Ljava/lang/String;I)V

    return-void
.end method
