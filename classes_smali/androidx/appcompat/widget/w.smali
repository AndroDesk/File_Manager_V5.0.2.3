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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .registers 4

    iput-object p1, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/appcompat/widget/w;->b:Landroid/graphics/Typeface;

    iput p3, p0, Landroidx/appcompat/widget/w;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/w;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/w;->b:Landroid/graphics/Typeface;

    iget v2, p0, Landroidx/appcompat/widget/w;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
