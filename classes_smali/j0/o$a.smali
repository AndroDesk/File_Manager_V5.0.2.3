.class public final Lj0/o$a;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll0/a;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ll0/a;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lj0/o$a;->a:Ll0/a;

    iput-object p2, p0, Lj0/o$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lj0/o$a;->a:Ll0/a;

    iget-object v1, p0, Lj0/o$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ll0/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
