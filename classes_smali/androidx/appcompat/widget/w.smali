.class public final Landroidx/appcompat/widget/w;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/graphics/Typeface;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/w;->b:Landroid/graphics/Typeface;

    .line 5
    iput p3, p0, Landroidx/appcompat/widget/w;->c:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/w;->b:Landroid/graphics/Typeface;

    .line 5
    iget v2, p0, Landroidx/appcompat/widget/w;->c:I

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 10
    return-void
.end method
