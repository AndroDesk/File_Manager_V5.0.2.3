.class public Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;
.super Ljava/lang/Object;
.source "NavigateItem.java"


# static fields
.field public static final INVALID_TYPE:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->INVALID_TYPE:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->type:I

    iput p1, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->iconRes:I

    iput-object p2, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    iput p3, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->titleRes:I

    invoke-static {p3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->pageName:Ljava/lang/String;

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

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->type:I

    iput v0, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->titleRes:I

    iput p1, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->iconRes:I

    iput-object p2, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->pageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->bundle:Landroid/os/Bundle;

    return-void
.end method
