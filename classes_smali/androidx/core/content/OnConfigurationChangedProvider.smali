.class public interface abstract Landroidx/core/content/OnConfigurationChangedProvider;
.super Ljava/lang/Object;
.source "OnConfigurationChangedProvider.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract addOnConfigurationChangedListener(Ll0/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeOnConfigurationChangedListener(Ll0/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation
.end method
