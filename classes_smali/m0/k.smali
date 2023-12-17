.class public final synthetic Lm0/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final synthetic a:Lm0/m;

.field public final synthetic b:Lm0/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lm0/m;Lm0/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/k;->a:Lm0/m;

    iput-object p2, p0, Lm0/k;->b:Lm0/o;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    iget-object p1, p0, Lm0/k;->a:Lm0/m;

    iget-object v0, p0, Lm0/k;->b:Lm0/o;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v1, :cond_c

    invoke-virtual {p1, v0}, Lm0/m;->c(Lm0/o;)V

    goto :goto_f

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_f
    return-void
.end method
