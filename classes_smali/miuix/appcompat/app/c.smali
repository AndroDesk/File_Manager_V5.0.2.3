.class public final synthetic Lmiuix/appcompat/app/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/c;->a:Lmiuix/appcompat/app/AlertController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/app/c;->a:Lmiuix/appcompat/app/AlertController;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/AlertController;->c(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V

    return-void
.end method
