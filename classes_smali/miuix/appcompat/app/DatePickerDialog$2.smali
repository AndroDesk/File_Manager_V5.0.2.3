.class Lmiuix/appcompat/app/DatePickerDialog$2;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/DatePickerDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/DatePickerDialog;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog$2;->this$0:Lmiuix/appcompat/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog$2;->this$0:Lmiuix/appcompat/app/DatePickerDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/DatePickerDialog;->access$200(Lmiuix/appcompat/app/DatePickerDialog;)V

    return-void
.end method
