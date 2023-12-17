.class public abstract Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;
.super Ljava/lang/Object;
.source "FloatPropertyCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;->mPropertyName:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static createFloatPropertyCompat(Landroid/util/FloatProperty;)Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/FloatProperty<",
            "TT;>;)",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat$1;

    .line 3
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat$1;-><init>(Ljava/lang/String;Landroid/util/FloatProperty;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract getValue(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method
