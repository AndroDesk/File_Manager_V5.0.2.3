.class public Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;
.super Ljava/lang/Object;
.source "NavigateItem.java"


# static fields
.field public static final INVALID_TYPE:I = -0x1


# instance fields
.field public bundle:Landroid/os/Bundle;

.field public iconRes:I

.field public pageName:Ljava/lang/String;

.field public position:I

.field public selected:Z

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public titleRes:I

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->type:I

    .line 13
    iput p1, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->iconRes:I

    .line 14
    iput-object p2, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->titleRes:I

    .line 16
    invoke-static {p3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->title:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->pageName:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->type:I

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->titleRes:I

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->iconRes:I

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->title:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->pageName:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->bundle:Landroid/os/Bundle;

    return-void
.end method
