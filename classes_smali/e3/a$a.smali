.class public final Le3/a$a;
.super Ljava/lang/Object;
.source "JDK7PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.Build$VERSION"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_18

    check-cast v1, Ljava/lang/Integer;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_18

    goto :goto_19

    :catchall_18
    :cond_18
    move-object v1, v0

    :goto_19
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-eqz v2, :cond_27

    move-object v0, v1

    :cond_27
    sput-object v0, Le3/a$a;->a:Ljava/lang/Integer;

    return-void
.end method