.class public final Lr/a$a;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Lr/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:Lr/a;


# direct methods
.method public constructor <init>(Lr/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lr/a$a;->b:Lr/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .registers 8

    .line 1
    iget-object v0, p0, Lr/a$a;->b:Lr/a;

    .line 3
    iget-object v0, v0, Lr/a;->mShadowBounds:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object v0, p0, Lr/a$a;->b:Lr/a;

    .line 10
    iget-object v1, v0, Lr/a;->mContentPadding:Landroid/graphics/Rect;

    .line 12
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 14
    add-int/2addr p1, v2

    .line 15
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 17
    add-int/2addr p2, v2

    .line 18
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 20
    add-int/2addr p3, v2

    .line 21
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 23
    add-int/2addr p4, v1

    .line 24
    invoke-static {v0, p1, p2, p3, p4}, Lr/a;->access$001(Lr/a;IIII)V

    .line 27
    return-void
.end method
