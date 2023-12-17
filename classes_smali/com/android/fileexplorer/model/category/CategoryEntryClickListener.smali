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
.method public constructor <init>(Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;->mListener:Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    const v0, 0x7f0a00c7

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    instance-of v1, v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 10
    const-string v2, "CategoryEntryClickListener"

    .line 12
    if-nez v1, :cond_13

    .line 14
    const-string p1, "tag error!"

    .line 16
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void

    .line 20
    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 26
    if-nez v0, :cond_21

    .line 28
    const-string p1, "category is null"

    .line 30
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void

    .line 34
    :cond_21
    iget-object v1, p0, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener;->mListener:Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;

    .line 36
    if-eqz v1, :cond_28

    .line 38
    invoke-interface {v1, v0}, Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;->onClickEntry(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V

    .line 41
    :cond_28
    const v0, 0x7f0a00c9

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 50
    const v1, 0x7f0a00c8

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/Integer;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result p1

    .line 63
    invoke-static {v0, p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickLabel(Ljava/lang/String;I)V

    .line 66
    return-void
.end method
