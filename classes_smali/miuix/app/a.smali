.class public final synthetic Lmiuix/app/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/a;


# instance fields
.field public final synthetic a:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/app/a;->a:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lmiuix/app/a;->a:Landroid/content/res/Configuration;

    check-cast p1, Landroid/content/ComponentCallbacks;

    invoke-static {v0, p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->a(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V

    return-void
.end method
