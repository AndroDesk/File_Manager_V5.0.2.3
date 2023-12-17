.class public final Lf0/i$a;
.super La/b;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public l:Landroidx/core/content/res/ResourcesCompat$FontCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .registers 2

    invoke-direct {p0}, La/b;-><init>()V

    iput-object p1, p0, Lf0/i$a;->l:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    return-void
.end method
