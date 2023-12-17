.class public final Lf1/n$d;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Lf1/t;

.field public d:Lf1/f0;

.field public e:Lf1/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lf1/n;Lf1/e0;Lf1/t;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/n$d;->a:Landroid/view/View;

    iput-object p2, p0, Lf1/n$d;->b:Ljava/lang/String;

    iput-object p5, p0, Lf1/n$d;->c:Lf1/t;

    iput-object p4, p0, Lf1/n$d;->d:Lf1/f0;

    iput-object p3, p0, Lf1/n$d;->e:Lf1/n;

    return-void
.end method
