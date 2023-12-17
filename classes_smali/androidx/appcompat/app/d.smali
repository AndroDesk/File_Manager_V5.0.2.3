.class public final Landroidx/appcompat/app/d;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertController;

.field public final synthetic b:Landroidx/appcompat/app/AlertController$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/d;->b:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/d;->a:Landroidx/appcompat/app/AlertController;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/d;->b:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iget-object p1, p1, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    iget-object p2, p0, Landroidx/appcompat/app/d;->a:Landroidx/appcompat/app/AlertController;

    .line 7
    iget-object p2, p2, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/q;

    .line 9
    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 12
    iget-object p1, p0, Landroidx/appcompat/app/d;->b:Landroidx/appcompat/app/AlertController$b;

    .line 14
    iget-boolean p1, p1, Landroidx/appcompat/app/AlertController$b;->G:Z

    .line 16
    if-nez p1, :cond_18

    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/d;->a:Landroidx/appcompat/app/AlertController;

    .line 20
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/q;

    .line 22
    invoke-virtual {p1}, Landroidx/appcompat/app/q;->dismiss()V

    .line 25
    :cond_18
    return-void
.end method
