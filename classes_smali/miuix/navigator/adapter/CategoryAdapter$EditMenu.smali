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
.field public static final EDIT_ACTION_DESELECT_ALL:I

.field public static final EDIT_ACTION_EDIT:I

.field public static final EDIT_ACTION_SELECT_ALL:I

.field public static final EDIT_TYPE_MULTIPLE:I

.field public static final EDIT_TYPE_NONE:I

.field public static final EDIT_TYPE_SINGLE:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->EDIT_ACTION_DESELECT_ALL:I

    const v0, -0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->EDIT_ACTION_EDIT:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->EDIT_ACTION_SELECT_ALL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->EDIT_TYPE_MULTIPLE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->EDIT_TYPE_NONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->EDIT_TYPE_SINGLE:I

    return-void
.end method

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

    invoke-direct/range {v0 .. v8}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;-><init>(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;IZZ)V

    return-void
.end method

.method private constructor <init>(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;IZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    iput p2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitleRes:I

    iput-object p3, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitle:Ljava/lang/CharSequence;

    iput p4, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mIconRes:I

    iput-object p5, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p6, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditType:I

    iput-boolean p7, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mShowInContextMenu:Z

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

    invoke-direct/range {v0 .. v8}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;-><init>(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;IZZ)V

    return-void
.end method


# virtual methods
.method public addTo(Landroid/view/ContextMenu;)V
    .registers 5

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mShowInContextMenu:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_17

    :cond_10
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitleRes:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :goto_17
    return-void
.end method

.method public addTo(Landroid/view/Menu;)V
    .registers 6

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mShowInActionMode:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditType:I

    iget v3, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    invoke-interface {p1, v2, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    goto :goto_1d

    :cond_13
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditType:I

    iget v2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    iget v3, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mTitleRes:I

    invoke-interface {p1, v0, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    :goto_1d
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_2c

    :cond_25
    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mIconRes:I

    if-eqz v0, :cond_2c

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2c
    :goto_2c
    return-void
.end method

.method public getEditAction()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->mEditAction:I

    return v0
.end method
