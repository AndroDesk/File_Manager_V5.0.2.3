.class public final Lf1/h;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Li0/d$b;


# instance fields
.field public final synthetic a:Lf1/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lf1/n;)V
    .registers 2

    iput-object p1, p0, Lf1/h;->a:Lf1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lf1/h;->a:Lf1/n;

    invoke-virtual {v0}, Lf1/n;->cancel()V

    return-void
.end method
