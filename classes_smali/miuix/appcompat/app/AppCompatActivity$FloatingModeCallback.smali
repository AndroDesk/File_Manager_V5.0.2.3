.class Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatingModeCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public onFloatingWindowModeChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onFloatingWindowModeChanged(Z)V

    .line 6
    return-void
.end method

.method public onFloatingWindowModeChanging(Z)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$FloatingModeCallback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onFloatingWindowModeChanging(Z)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
