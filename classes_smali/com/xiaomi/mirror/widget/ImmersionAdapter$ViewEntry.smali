.class public Lcom/xiaomi/mirror/widget/ImmersionAdapter$ViewEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/widget/ImmersionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewEntry"
.end annotation


# instance fields
.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mTitle:Ljava/lang/CharSequence;

.field public final mViewType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/mirror/widget/ImmersionAdapter$ViewEntry;->mViewType:I

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/ImmersionAdapter$ViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/widget/ImmersionAdapter$ViewEntry;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewType()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/mirror/widget/ImmersionAdapter$ViewEntry;->mViewType:I

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mirror/widget/ImmersionAdapter$ViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mirror/widget/ImmersionAdapter$ViewEntry;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
