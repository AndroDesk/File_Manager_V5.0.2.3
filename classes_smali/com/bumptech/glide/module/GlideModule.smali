.class public interface abstract Lcom/bumptech/glide/module/GlideModule;
.super Ljava/lang/Object;
.source "GlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/module/RegistersComponents;
.implements Lcom/bumptech/glide/module/AppliesOptions;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract synthetic applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
.end method

.method public abstract synthetic registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
.end method
