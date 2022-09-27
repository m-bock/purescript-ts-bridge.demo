module TsCodeGen.Gen where

{-GEN:imports-}

import Ansi.Codes as Ansi.Codes
import Data.Argonaut.Decode.Error as Data.Argonaut.Decode.Error
import Data.Argonaut.JCursor as Data.Argonaut.JCursor
import Data.ArrayBuffer.Types as Data.ArrayBuffer.Types
import Data.Date as Data.Date
import Data.Date.Component as Data.Date.Component
import Data.DateTime as Data.DateTime
import Data.Generic.Rep as Data.Generic.Rep
import Data.Int as Data.Int
import Data.Interval.Duration as Data.Interval.Duration
import Data.Interval.Duration.Iso as Data.Interval.Duration.Iso
import Data.Number.Format as Data.Number.Format
import Data.Ordering as Data.Ordering
import Data.Posix.Signal as Data.Posix.Signal
import Data.Time as Data.Time
import Data.Typelevel.Bool as Data.Typelevel.Bool
import Data.Typelevel.Num.Ops as Data.Typelevel.Num.Ops
import Data.Typelevel.Num.Reps as Data.Typelevel.Num.Reps
import Dodo.Box as Dodo.Box
import ExitCodes as ExitCodes
import Foreign as Foreign
import Language.PS.CST.Types.Declaration as Language.PS.CST.Types.Declaration
import Language.PS.CST.Types.Leafs as Language.PS.CST.Types.Leafs
import Language.PS.CST.Types.Module as Language.PS.CST.Types.Module
import Language.PS.SmartCST.Types.Declaration as Language.PS.SmartCST.Types.Declaration
import Language.PS.SmartCST.Types.SmartQualifiedNameConstructor as Language.PS.SmartCST.Types.SmartQualifiedNameConstructor
import Node.Buffer.Types as Node.Buffer.Types
import Node.ChildProcess as Node.ChildProcess
import Node.Encoding as Node.Encoding
import Node.FS as Node.FS
import Node.FS.Stats as Node.FS.Stats
import Node.Platform as Node.Platform
import Node.Stream as Node.Stream
import Options.Applicative.Types as Options.Applicative.Types
import PureScript.CST.Errors as PureScript.CST.Errors
import PureScript.CST.Layout as PureScript.CST.Layout
import PureScript.CST.Print as PureScript.CST.Print
import PureScript.CST.Range.TokenList as PureScript.CST.Range.TokenList
import PureScript.CST.TokenStream as PureScript.CST.TokenStream
import PureScript.CST.Types as PureScript.CST.Types
import Test.QuickCheck as Test.QuickCheck
import Test.Spec as Test.Spec
import Test.Spec.Reporter.Base as Test.Spec.Reporter.Base
import Test.Spec.Result as Test.Spec.Result
import Test.Spec.Runner.Event as Test.Spec.Runner.Event
import Test.Spec.Speed as Test.Spec.Speed
import Text.PrettyPrint.Leijen as Text.PrettyPrint.Leijen
import TsBridge.ABC as TsBridge.ABC
import TsBridge.DTS as TsBridge.DTS
import TsBridgeGen.Monad as TsBridgeGen.Monad
import TsBridgeGen.Types as TsBridgeGen.Types

{-GEN:END-}

import TsBridge (TsBridgeM, TsType, tsOpaqueType)

class ToTsBridge a where
  toTsBridge :: a -> TsBridgeM TsType

{-GEN:instances-}

instance ToTsBridge Ansi.Codes.EscapeCode where
  toTsBridge = tsOpaqueType "Ansi.Codes" "EscapeCode" []

instance ToTsBridge Ansi.Codes.EraseParam where
  toTsBridge = tsOpaqueType "Ansi.Codes" "EraseParam" []

instance ToTsBridge Ansi.Codes.GraphicsParam where
  toTsBridge = tsOpaqueType "Ansi.Codes" "GraphicsParam" []

instance ToTsBridge Ansi.Codes.RenderingMode where
  toTsBridge = tsOpaqueType "Ansi.Codes" "RenderingMode" []

instance ToTsBridge Ansi.Codes.Color where
  toTsBridge = tsOpaqueType "Ansi.Codes" "Color" []

instance ToTsBridge Data.Argonaut.Decode.Error.JsonDecodeError where
  toTsBridge = tsOpaqueType "Data.Argonaut.Decode.Error" "JsonDecodeError" []

instance ToTsBridge Data.Argonaut.JCursor.JCursor where
  toTsBridge = tsOpaqueType "Data.Argonaut.JCursor" "JCursor" []

instance ToTsBridge Data.ArrayBuffer.Types.ArrayViewType where
  toTsBridge = tsOpaqueType "Data.ArrayBuffer.Types" "ArrayViewType" []

instance ToTsBridge Data.Date.Date where
  toTsBridge = tsOpaqueType "Data.Date" "Date" []

instance ToTsBridge Data.Date.Component.Month where
  toTsBridge = tsOpaqueType "Data.Date.Component" "Month" []

instance ToTsBridge Data.Date.Component.Weekday where
  toTsBridge = tsOpaqueType "Data.Date.Component" "Weekday" []

instance ToTsBridge Data.DateTime.DateTime where
  toTsBridge = tsOpaqueType "Data.DateTime" "DateTime" []

instance ToTsBridge Data.Interval.Duration.DurationComponent where
  toTsBridge = tsOpaqueType "Data.Interval.Duration" "DurationComponent" []

instance ToTsBridge Data.Interval.Duration.Iso.Error where
  toTsBridge = tsOpaqueType "Data.Interval.Duration.Iso" "Error" []

instance ToTsBridge Data.Time.Time where
  toTsBridge = tsOpaqueType "Data.Time" "Time" []

instance ToTsBridge Dodo.Box.Align where
  toTsBridge = tsOpaqueType "Dodo.Box" "Align" []

instance ToTsBridge ExitCodes.ExitCode where
  toTsBridge = tsOpaqueType "ExitCodes" "ExitCode" []

instance ToTsBridge Foreign.ForeignError where
  toTsBridge = tsOpaqueType "Foreign" "ForeignError" []

instance ToTsBridge Data.Int.Parity where
  toTsBridge = tsOpaqueType "Data.Int" "Parity" []

instance ToTsBridge PureScript.CST.Errors.ParseError where
  toTsBridge = tsOpaqueType "PureScript.CST.Errors" "ParseError" []

instance ToTsBridge PureScript.CST.Layout.LayoutDelim where
  toTsBridge = tsOpaqueType "PureScript.CST.Layout" "LayoutDelim" []

instance ToTsBridge PureScript.CST.Print.TokenOption where
  toTsBridge = tsOpaqueType "PureScript.CST.Print" "TokenOption" []

instance ToTsBridge PureScript.CST.Range.TokenList.TokenList where
  toTsBridge = tsOpaqueType "PureScript.CST.Range.TokenList" "TokenList" []

instance ToTsBridge PureScript.CST.Range.TokenList.UnconsToken where
  toTsBridge = tsOpaqueType "PureScript.CST.Range.TokenList" "UnconsToken" []

instance ToTsBridge PureScript.CST.TokenStream.TokenStep where
  toTsBridge = tsOpaqueType "PureScript.CST.TokenStream" "TokenStep" []

instance ToTsBridge PureScript.CST.Types.LineFeed where
  toTsBridge = tsOpaqueType "PureScript.CST.Types" "LineFeed" []

instance ToTsBridge PureScript.CST.Types.SourceStyle where
  toTsBridge = tsOpaqueType "PureScript.CST.Types" "SourceStyle" []

instance ToTsBridge PureScript.CST.Types.IntValue where
  toTsBridge = tsOpaqueType "PureScript.CST.Types" "IntValue" []

instance ToTsBridge PureScript.CST.Types.Token where
  toTsBridge = tsOpaqueType "PureScript.CST.Types" "Token" []

instance ToTsBridge PureScript.CST.Types.DataMembers where
  toTsBridge = tsOpaqueType "PureScript.CST.Types" "DataMembers" []

instance ToTsBridge PureScript.CST.Types.ClassFundep where
  toTsBridge = tsOpaqueType "PureScript.CST.Types" "ClassFundep" []

instance ToTsBridge PureScript.CST.Types.Fixity where
  toTsBridge = tsOpaqueType "PureScript.CST.Types" "Fixity" []

instance ToTsBridge PureScript.CST.Types.FixityOp where
  toTsBridge = tsOpaqueType "PureScript.CST.Types" "FixityOp" []

instance ToTsBridge PureScript.CST.Types.Role where
  toTsBridge = tsOpaqueType "PureScript.CST.Types" "Role" []

instance ToTsBridge Node.Buffer.Types.BufferValueType where
  toTsBridge = tsOpaqueType "Node.Buffer.Types" "BufferValueType" []

instance ToTsBridge Node.Encoding.Encoding where
  toTsBridge = tsOpaqueType "Node.Encoding" "Encoding" []

instance ToTsBridge Node.ChildProcess.Exit where
  toTsBridge = tsOpaqueType "Node.ChildProcess" "Exit" []

instance ToTsBridge Node.ChildProcess.StdIOBehaviour where
  toTsBridge = tsOpaqueType "Node.ChildProcess" "StdIOBehaviour" []

instance ToTsBridge Node.FS.FileFlags where
  toTsBridge = tsOpaqueType "Node.FS" "FileFlags" []

instance ToTsBridge Node.FS.SymlinkType where
  toTsBridge = tsOpaqueType "Node.FS" "SymlinkType" []

instance ToTsBridge Node.FS.Stats.Stats where
  toTsBridge = tsOpaqueType "Node.FS.Stats" "Stats" []

instance ToTsBridge Node.Platform.Platform where
  toTsBridge = tsOpaqueType "Node.Platform" "Platform" []

instance ToTsBridge Node.Stream.Read where
  toTsBridge = tsOpaqueType "Node.Stream" "Read" []

instance ToTsBridge Node.Stream.Write where
  toTsBridge = tsOpaqueType "Node.Stream" "Write" []

instance ToTsBridge Data.Number.Format.Format where
  toTsBridge = tsOpaqueType "Data.Number.Format" "Format" []

instance ToTsBridge Options.Applicative.Types.ParseError where
  toTsBridge = tsOpaqueType "Options.Applicative.Types" "ParseError" []

instance ToTsBridge Options.Applicative.Types.IsCmdStart where
  toTsBridge = tsOpaqueType "Options.Applicative.Types" "IsCmdStart" []

instance ToTsBridge Options.Applicative.Types.Backtracking where
  toTsBridge = tsOpaqueType "Options.Applicative.Types" "Backtracking" []

instance ToTsBridge Options.Applicative.Types.OptName where
  toTsBridge = tsOpaqueType "Options.Applicative.Types" "OptName" []

instance ToTsBridge Options.Applicative.Types.OptVisibility where
  toTsBridge = tsOpaqueType "Options.Applicative.Types" "OptVisibility" []

instance ToTsBridge Options.Applicative.Types.SomeParser where
  toTsBridge = tsOpaqueType "Options.Applicative.Types" "SomeParser" []

instance ToTsBridge Options.Applicative.Types.Context where
  toTsBridge = tsOpaqueType "Options.Applicative.Types" "Context" []

instance ToTsBridge Options.Applicative.Types.ArgPolicy where
  toTsBridge = tsOpaqueType "Options.Applicative.Types" "ArgPolicy" []

instance ToTsBridge Text.PrettyPrint.Leijen.Doc where
  toTsBridge = tsOpaqueType "Text.PrettyPrint.Leijen" "Doc" []

instance ToTsBridge Text.PrettyPrint.Leijen.SimpleDoc where
  toTsBridge = tsOpaqueType "Text.PrettyPrint.Leijen" "SimpleDoc" []

instance ToTsBridge Text.PrettyPrint.Leijen.LazySimpleDoc where
  toTsBridge = tsOpaqueType "Text.PrettyPrint.Leijen" "LazySimpleDoc" []

instance ToTsBridge Text.PrettyPrint.Leijen.Docs where
  toTsBridge = tsOpaqueType "Text.PrettyPrint.Leijen" "Docs" []

instance ToTsBridge Data.Posix.Signal.Signal where
  toTsBridge = tsOpaqueType "Data.Posix.Signal" "Signal" []

instance ToTsBridge Data.Generic.Rep.NoArguments where
  toTsBridge = tsOpaqueType "Data.Generic.Rep" "NoArguments" []

instance ToTsBridge Data.Ordering.Ordering where
  toTsBridge = tsOpaqueType "Data.Ordering" "Ordering" []

instance ToTsBridge Language.PS.CST.Types.Declaration.Declaration where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Declaration" "Declaration" []

instance ToTsBridge Language.PS.CST.Types.Declaration.Foreign where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Declaration" "Foreign" []

instance ToTsBridge Language.PS.CST.Types.Declaration.FixityOp where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Declaration" "FixityOp" []

instance ToTsBridge Language.PS.CST.Types.Declaration.PSType where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Declaration" "PSType" []

instance ToTsBridge Language.PS.CST.Types.Declaration.TypeVarBinding where
  toTsBridge = tsOpaqueType
               "Language.PS.CST.Types.Declaration"
               "TypeVarBinding"
               []

instance ToTsBridge Language.PS.CST.Types.Declaration.Binder where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Declaration" "Binder" []

instance ToTsBridge Language.PS.CST.Types.Declaration.Guarded where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Declaration" "Guarded" []

instance ToTsBridge Language.PS.CST.Types.Declaration.LetBinding where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Declaration" "LetBinding" []

instance ToTsBridge Language.PS.CST.Types.Declaration.Expr where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Declaration" "Expr" []

instance ToTsBridge Language.PS.CST.Types.Declaration.RecordUpdate where
  toTsBridge = tsOpaqueType
               "Language.PS.CST.Types.Declaration"
               "RecordUpdate"
               []

instance ToTsBridge Language.PS.CST.Types.Declaration.DoStatement where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Declaration" "DoStatement" []

instance ToTsBridge Language.PS.CST.Types.Declaration.InstanceBinding where
  toTsBridge = tsOpaqueType
               "Language.PS.CST.Types.Declaration"
               "InstanceBinding"
               []

instance ToTsBridge Language.PS.CST.Types.Leafs.Comments where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Leafs" "Comments" []

instance ToTsBridge Language.PS.CST.Types.Leafs.OpNameType where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Leafs" "OpNameType" []

instance ToTsBridge Language.PS.CST.Types.Leafs.ProperNameType where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Leafs" "ProperNameType" []

instance ToTsBridge Language.PS.CST.Types.Leafs.DeclDeriveType where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Leafs" "DeclDeriveType" []

instance ToTsBridge Language.PS.CST.Types.Leafs.Fixity where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Leafs" "Fixity" []

instance ToTsBridge Language.PS.CST.Types.Leafs.ClassFundep where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Leafs" "ClassFundep" []

instance ToTsBridge Language.PS.CST.Types.Module.DataMembers where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Module" "DataMembers" []

instance ToTsBridge Language.PS.CST.Types.Module.Import where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Module" "Import" []

instance ToTsBridge Language.PS.CST.Types.Module.Export where
  toTsBridge = tsOpaqueType "Language.PS.CST.Types.Module" "Export" []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.Declaration where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.Declaration"
               "Declaration"
               []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.Foreign where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.Declaration"
               "Foreign"
               []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.FixityOp where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.Declaration"
               "FixityOp"
               []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.PSType where
  toTsBridge = tsOpaqueType "Language.PS.SmartCST.Types.Declaration" "PSType" []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.TypeVarBinding where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.Declaration"
               "TypeVarBinding"
               []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.Binder where
  toTsBridge = tsOpaqueType "Language.PS.SmartCST.Types.Declaration" "Binder" []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.Guarded where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.Declaration"
               "Guarded"
               []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.LetBinding where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.Declaration"
               "LetBinding"
               []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.Expr where
  toTsBridge = tsOpaqueType "Language.PS.SmartCST.Types.Declaration" "Expr" []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.RecordUpdate where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.Declaration"
               "RecordUpdate"
               []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.DoStatement where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.Declaration"
               "DoStatement"
               []

instance ToTsBridge Language.PS.SmartCST.Types.Declaration.InstanceBinding where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.Declaration"
               "InstanceBinding"
               []

instance ToTsBridge
     Language.PS.SmartCST.Types.SmartQualifiedNameConstructor.SmartQualifiedNameConstructor where
  toTsBridge = tsOpaqueType
               "Language.PS.SmartCST.Types.SmartQualifiedNameConstructor"
               "SmartQualifiedNameConstructor"
               []

instance ToTsBridge Test.QuickCheck.Result where
  toTsBridge = tsOpaqueType "Test.QuickCheck" "Result" []

instance ToTsBridge Test.Spec.ComputationType where
  toTsBridge = tsOpaqueType "Test.Spec" "ComputationType" []

instance ToTsBridge Test.Spec.Reporter.Base.RunningItem where
  toTsBridge = tsOpaqueType "Test.Spec.Reporter.Base" "RunningItem" []

instance ToTsBridge Test.Spec.Result.Result where
  toTsBridge = tsOpaqueType "Test.Spec.Result" "Result" []

instance ToTsBridge Test.Spec.Runner.Event.Execution where
  toTsBridge = tsOpaqueType "Test.Spec.Runner.Event" "Execution" []

instance ToTsBridge Test.Spec.Runner.Event.Event where
  toTsBridge = tsOpaqueType "Test.Spec.Runner.Event" "Event" []

instance ToTsBridge Test.Spec.Speed.Speed where
  toTsBridge = tsOpaqueType "Test.Spec.Speed" "Speed" []

instance ToTsBridge Data.Typelevel.Bool.True where
  toTsBridge = tsOpaqueType "Data.Typelevel.Bool" "True" []

instance ToTsBridge Data.Typelevel.Bool.False where
  toTsBridge = tsOpaqueType "Data.Typelevel.Bool" "False" []

instance ToTsBridge Data.Typelevel.Num.Ops.LT where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Ops" "LT" []

instance ToTsBridge Data.Typelevel.Num.Ops.EQ where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Ops" "EQ" []

instance ToTsBridge Data.Typelevel.Num.Ops.GT where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Ops" "GT" []

instance ToTsBridge Data.Typelevel.Num.Reps.D0 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D0" []

instance ToTsBridge Data.Typelevel.Num.Reps.D1 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D1" []

instance ToTsBridge Data.Typelevel.Num.Reps.D2 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D2" []

instance ToTsBridge Data.Typelevel.Num.Reps.D3 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D3" []

instance ToTsBridge Data.Typelevel.Num.Reps.D4 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D4" []

instance ToTsBridge Data.Typelevel.Num.Reps.D5 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D5" []

instance ToTsBridge Data.Typelevel.Num.Reps.D6 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D6" []

instance ToTsBridge Data.Typelevel.Num.Reps.D7 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D7" []

instance ToTsBridge Data.Typelevel.Num.Reps.D8 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D8" []

instance ToTsBridge Data.Typelevel.Num.Reps.D9 where
  toTsBridge = tsOpaqueType "Data.Typelevel.Num.Reps" "D9" []

instance ToTsBridge TsBridge.ABC.A where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "A" []

instance ToTsBridge TsBridge.ABC.B where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "B" []

instance ToTsBridge TsBridge.ABC.C where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "C" []

instance ToTsBridge TsBridge.ABC.D where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "D" []

instance ToTsBridge TsBridge.ABC.E where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "E" []

instance ToTsBridge TsBridge.ABC.F where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "F" []

instance ToTsBridge TsBridge.ABC.G where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "G" []

instance ToTsBridge TsBridge.ABC.H where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "H" []

instance ToTsBridge TsBridge.ABC.I where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "I" []

instance ToTsBridge TsBridge.ABC.J where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "J" []

instance ToTsBridge TsBridge.ABC.K where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "K" []

instance ToTsBridge TsBridge.ABC.L where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "L" []

instance ToTsBridge TsBridge.ABC.M where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "M" []

instance ToTsBridge TsBridge.ABC.N where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "N" []

instance ToTsBridge TsBridge.ABC.O where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "O" []

instance ToTsBridge TsBridge.ABC.P where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "P" []

instance ToTsBridge TsBridge.ABC.Q where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "Q" []

instance ToTsBridge TsBridge.ABC.R where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "R" []

instance ToTsBridge TsBridge.ABC.S where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "S" []

instance ToTsBridge TsBridge.ABC.T where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "T" []

instance ToTsBridge TsBridge.ABC.U where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "U" []

instance ToTsBridge TsBridge.ABC.V where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "V" []

instance ToTsBridge TsBridge.ABC.W where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "W" []

instance ToTsBridge TsBridge.ABC.X where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "X" []

instance ToTsBridge TsBridge.ABC.Y where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "Y" []

instance ToTsBridge TsBridge.ABC.Z where
  toTsBridge = tsOpaqueType "TsBridge.ABC" "Z" []

instance ToTsBridge TsBridge.DTS.TsDeclaration where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsDeclaration" []

instance ToTsBridge TsBridge.DTS.TsDeclVisibility where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsDeclVisibility" []

instance ToTsBridge TsBridge.DTS.TsType where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsType" []

instance ToTsBridge TsBridge.DTS.TsModule where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsModule" []

instance ToTsBridge TsBridge.DTS.TsModuleFile where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsModuleFile" []

instance ToTsBridge TsBridge.DTS.TsProgram where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsProgram" []

instance ToTsBridge TsBridge.DTS.TsName where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsName" []

instance ToTsBridge TsBridge.DTS.TsModulePath where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsModulePath" []

instance ToTsBridge TsBridge.DTS.TsFilePath where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsFilePath" []

instance ToTsBridge TsBridge.DTS.TsImport where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsImport" []

instance ToTsBridge TsBridge.DTS.TsQualName where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsQualName" []

instance ToTsBridge TsBridge.DTS.TsFnArg where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsFnArg" []

instance ToTsBridge TsBridge.DTS.TsRecordField where
  toTsBridge = tsOpaqueType "TsBridge.DTS" "TsRecordField" []

instance ToTsBridge TsBridgeGen.Monad.TsBridgeGenError where
  toTsBridge = tsOpaqueType "TsBridgeGen.Monad" "TsBridgeGenError" []

instance ToTsBridge TsBridgeGen.Types.PursModule where
  toTsBridge = tsOpaqueType "TsBridgeGen.Types" "PursModule" []

instance ToTsBridge TsBridgeGen.Types.PursDef where
  toTsBridge = tsOpaqueType "TsBridgeGen.Types" "PursDef" []

{-GEN:END-}
