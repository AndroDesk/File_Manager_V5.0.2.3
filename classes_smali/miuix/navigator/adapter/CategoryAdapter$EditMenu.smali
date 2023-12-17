.class public final Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditMenu"
.end annotation


# static fields
.field public static final EDIT_ACTION_DESELECT_ALL:I = -0x2

.field public static final EDIT_ACTION_EDIT:I = -0x3

.field public static final EDIT_ACTION_SELECT_ALL:I = -0x1

.field public static final EDIT_TYPE_MULTIPLE:I = 0x2

.field public static final EDIT_TYPE_NONE:I = 0x0

.field public static final EDIT_TYPE_SINGLE:I = 0x1


# instance fields
.field private final mEditAction:I

.field private final mEditType:I

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconRes:I

.field private final mShowInActionMode:Z

.field private final mShowInContextMenu:Z

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleRes:I


# direct methods
.method public constructor <init>(IIIIZZ)V
    .registers 16

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 1
    invoke-direct/range {v0 .. v8}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;-><init>(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;IZZ)V

    return-void
.end method

.method private constructor <init>(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;IZZ)V
    .registers 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    .line 5
    iput p2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitleRes:I

    .line 6
    iput-object p3, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitle:Ljava/lang/CharSequence;

    .line 7
    iput p4, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mIconRes:I

    .line 8
    iput-object p5, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 9
    iput p6, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditType:I

    .line 10
    iput-boolean p7, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mShowInContextMenu:Z

    .line 11
    iput-boolean p8, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mShowInActionMode:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IZZ)V
    .registers 16

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 2
    invoke-direct/range {v0 .. v8}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;-><init>(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;IZZ)V

    return-void
.end method


# virtual methods
.method public addTo(Landroid/view/ContextMenu;)V
    .registers 5

    .line 9
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mShowInContextMenu:Z

    if-nez v0, :cond_5

    return-void

    .line 10
    :cond_5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 11
    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_17

    .line 12
    :cond_10
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitleRes:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :goto_17
    return-void
.end method

.method public addTo(Landroid/view/Menu;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mShowInActionMode:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 3
    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditType:I

    iget v3, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    invoke-interface {p1, v2, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    goto :goto_1d

    .line 4
    :cond_13
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditType:I

    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    iget v3, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitleRes:I

    invoke-interface {p1, v0, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 5
    :goto_1d
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    .line 6
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_2c

    .line 7
    :cond_25
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mIconRes:I

    if-eqz v0, :cond_2c

    .line 8
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2c
    :goto_2c
    return-void
.end method

.method public getEditAction()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    .line 3
    return v0
.end method
