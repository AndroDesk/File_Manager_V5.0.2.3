.class public Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;
.super Ljava/lang/Object;
.source "MenuSingleLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/MenuSingleLineLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItemData"
.end annotation


# instance fields
.field public clickable:Z

.field public menuId:I

.field public menuResId:I

.field public selected:Z

.field public showImage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->showImage:Z

    iput p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuResId:I

    iput p2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuId:I

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->clickable:Z

    iput-boolean p4, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    return-void
.end method

.method public constructor <init>(IIZZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuResId:I

    iput p2, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->menuId:I

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->clickable:Z

    iput-boolean p4, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->selected:Z

    iput-boolean p5, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->showImage:Z

    return-void
.end method


# virtual methods
.method public showImage(Z)Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/MenuSingleLineLayout$MenuItemData;->showImage:Z

    return-object p0
.end method
